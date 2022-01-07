
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct zsBssInfo {int signalStrength; int* beaconInterval; int* ssid; int* frameBody; int* rsnIe; int atimWindow; int frequency; int channel; int * capability; scalar_t__ bssid; scalar_t__ macaddr; } ;
struct TYPE_3__ {int ssidLen; scalar_t__ authMode; scalar_t__ wepStatus; int atimWindow; scalar_t__ ssid; int * capability; scalar_t__ bssid; struct zsBssInfo ibssBssDesc; } ;
struct TYPE_4__ {int beaconInterval; TYPE_1__ sta; int frequency; scalar_t__ macAddr; } ;


 scalar_t__ ZM_AUTH_MODE_WPA2PSK ;
 scalar_t__ ZM_ENCRYPTION_AES ;
 int ZM_WLAN_EID_RSN_IE ;
 int ZM_WLAN_EID_SSID ;
 TYPE_2__* wd ;
 int zfChFreqToNum (int ,int *) ;
 int zfMemoryCopy (int*,int*,int) ;
 int zfZeroMemory (int*,int) ;
 int* zgWpa2AesOui ;
 int zmw_get_wlan_dev (int *) ;

void zfIBSSSetupBssDesc(zdev_t *dev)
{



    struct zsBssInfo *pBssInfo;
    u16_t offset = 0;

    zmw_get_wlan_dev(dev);

    pBssInfo = &wd->sta.ibssBssDesc;
    zfZeroMemory((u8_t *)pBssInfo, sizeof(struct zsBssInfo));

    pBssInfo->signalStrength = 100;

    zfMemoryCopy((u8_t *)pBssInfo->macaddr, (u8_t *)wd->macAddr,6);
    zfMemoryCopy((u8_t *)pBssInfo->bssid, (u8_t *)wd->sta.bssid, 6);

    pBssInfo->beaconInterval[0] = (u8_t)(wd->beaconInterval) ;
    pBssInfo->beaconInterval[1] = (u8_t)((wd->beaconInterval) >> 8) ;

    pBssInfo->capability[0] = wd->sta.capability[0];
    pBssInfo->capability[1] = wd->sta.capability[1];

    pBssInfo->ssid[0] = ZM_WLAN_EID_SSID;
    pBssInfo->ssid[1] = wd->sta.ssidLen;
    zfMemoryCopy((u8_t *)&pBssInfo->ssid[2], (u8_t *)wd->sta.ssid, wd->sta.ssidLen);
    zfMemoryCopy((u8_t *)&pBssInfo->frameBody[offset], (u8_t *)pBssInfo->ssid,
                 wd->sta.ssidLen + 2);
    offset += wd->sta.ssidLen + 2;




    pBssInfo->channel = zfChFreqToNum(wd->frequency, ((void*)0));
    pBssInfo->frequency = wd->frequency;
    pBssInfo->atimWindow = wd->sta.atimWindow;
}
