-- AetherProtect Secure Loader
-- Script: tani
local success, result = pcall(function()
    return game:HttpGet("https://aetherprotect.tuffgv.my.id/api/lua/92b1cbe2cbe212b0?t=1772606279&sig=a257fe4273a89b65d954a1b14bbcbc68efab4cb7f84dbcd8ce6a30f41a3e49be")
end)

if success and result then
    if result:find("AetherProtect:") then
        warn(result)
    else
        local func, err = loadstring(result)
        if func then
            func()
        else
            warn("AetherProtect: Compilation Error: " .. tostring(err))
        end
    end
else
    warn("AetherProtect: Failed to fetch script. Connection error.")
end
