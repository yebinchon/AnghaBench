
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {int* bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; int* macAddr; int mmseq; TYPE_1__ sta; } ;


 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 int ZM_WLAN_FRAME_TYPE_ACTION ;
 TYPE_2__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggGenAddbaHeader(zdev_t* dev, u16_t* dst,
        u16_t* header, u16_t len, zbuf_t* buf, u16_t vap, u8_t encrypt)
{
    u8_t hlen = 32;


    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();





    header[0] = 24+len+4;
    header[1] = 0x8;







    header[2] = 0x0f01;
    header[3] = 0x000B;






    header[4+0] = ZM_WLAN_FRAME_TYPE_ACTION;



    header[4+1] = 0;

    if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        header[4+8] = wd->sta.bssid[0];
        header[4+9] = wd->sta.bssid[1];
        header[4+10] = wd->sta.bssid[2];
    }
    else if (wd->wlanMode == ZM_MODE_PSEUDO)
    {

        header[4+8] = 0;
        header[4+9] = 0;
        header[4+10] = 0;
    }
    else if (wd->wlanMode == ZM_MODE_IBSS)
    {
        header[4+8] = wd->sta.bssid[0];
        header[4+9] = wd->sta.bssid[1];
        header[4+10] = wd->sta.bssid[2];
    }
    else if (wd->wlanMode == ZM_MODE_AP)
    {

        header[4+8] = wd->macAddr[0];
        header[4+9] = wd->macAddr[1];
        header[4+10] = wd->macAddr[2] + (vap<<8);
    }


    header[4+2] = dst[0];
    header[4+3] = dst[1];
    header[4+4] = dst[2];


    header[4+5] = wd->macAddr[0];
    header[4+6] = wd->macAddr[1];
    if (wd->wlanMode == ZM_MODE_AP)
    {
        header[4+7] = wd->macAddr[2] + (vap<<8);
    }
    else
    {
        header[4+7] = wd->macAddr[2];
    }


    zmw_enter_critical_section(dev);
    header[4+11] = ((wd->mmseq++)<<4);
    zmw_leave_critical_section(dev);


    return hlen;
}
