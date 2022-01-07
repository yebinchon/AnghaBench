
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PSTRING ;
typedef scalar_t__ CHAR ;


 scalar_t__ Ndis802_11AuthModeAutoSwitch ;
 scalar_t__ Ndis802_11AuthModeOpen ;
 scalar_t__ Ndis802_11AuthModeShared ;
 scalar_t__ Ndis802_11AuthModeWPA ;
 scalar_t__ Ndis802_11AuthModeWPA1PSKWPA2PSK ;
 scalar_t__ Ndis802_11AuthModeWPA1WPA2 ;
 scalar_t__ Ndis802_11AuthModeWPA2 ;
 scalar_t__ Ndis802_11AuthModeWPA2PSK ;
 scalar_t__ Ndis802_11AuthModeWPANone ;
 scalar_t__ Ndis802_11AuthModeWPAPSK ;

PSTRING GetAuthMode(CHAR auth)
{
    if(auth == Ndis802_11AuthModeOpen)
 return "OPEN";
    if(auth == Ndis802_11AuthModeShared)
 return "SHARED";
 if(auth == Ndis802_11AuthModeAutoSwitch)
 return "AUTOWEP";
    if(auth == Ndis802_11AuthModeWPA)
 return "WPA";
    if(auth == Ndis802_11AuthModeWPAPSK)
 return "WPAPSK";
    if(auth == Ndis802_11AuthModeWPANone)
 return "WPANONE";
    if(auth == Ndis802_11AuthModeWPA2)
 return "WPA2";
    if(auth == Ndis802_11AuthModeWPA2PSK)
 return "WPA2PSK";
 if(auth == Ndis802_11AuthModeWPA1WPA2)
 return "WPA1WPA2";
 if(auth == Ndis802_11AuthModeWPA1PSKWPA2PSK)
 return "WPA1PSKWPA2PSK";

 return "UNKNOW";
}
