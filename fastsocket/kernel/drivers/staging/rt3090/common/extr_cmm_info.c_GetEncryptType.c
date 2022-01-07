
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PSTRING ;
typedef scalar_t__ CHAR ;


 scalar_t__ Ndis802_11Encryption2Enabled ;
 scalar_t__ Ndis802_11Encryption3Enabled ;
 scalar_t__ Ndis802_11Encryption4Enabled ;
 scalar_t__ Ndis802_11WEPDisabled ;
 scalar_t__ Ndis802_11WEPEnabled ;

PSTRING GetEncryptType(CHAR enc)
{
    if(enc == Ndis802_11WEPDisabled)
        return "NONE";
    if(enc == Ndis802_11WEPEnabled)
 return "WEP";
    if(enc == Ndis802_11Encryption2Enabled)
 return "TKIP";
    if(enc == Ndis802_11Encryption3Enabled)
 return "AES";
 if(enc == Ndis802_11Encryption4Enabled)
 return "TKIPAES";
    else
 return "UNKNOW";
}
