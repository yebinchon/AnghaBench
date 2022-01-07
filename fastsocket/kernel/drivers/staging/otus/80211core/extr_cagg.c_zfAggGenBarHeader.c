
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_2__ {int* macAddr; scalar_t__ wlanMode; int mmseq; } ;


 scalar_t__ ZM_MODE_AP ;
 int ZM_WLAN_FRAME_TYPE_BAR ;
 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggGenBarHeader(zdev_t* dev, u16_t* dst,
        u16_t* header, u16_t len, zbuf_t* buf, u16_t vap, u8_t encrypt)
{
    u8_t hlen = 16+8;


    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();





    header[0] = 16+len+4;
    header[1] = 0x8;



    header[2] = 0x0f00;
    header[3] = 0x0000;
    header[4+0] = ZM_WLAN_FRAME_TYPE_BAR;



    header[4+1] = 0;


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
