
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_3__ {int aid; int bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int ZM_WLAN_FRAME_TYPE_PSPOLL ;
 TYPE_2__* wd ;
 int zfHpSend (int *,int*,int,int *,int ,int *,int ,int *,int ,int ,int ,int) ;
 int zfTxGenMmHeader (int *,int ,int ,int*,int ,int *,int ,int ) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufSetSize (int *,int *,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfSendPSPoll(zdev_t* dev)
{
    zbuf_t* buf;


    u16_t err;
    u16_t hlen;
    u16_t header[(8+24+1)/2];

    zmw_get_wlan_dev(dev);

    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_msg0_mm(ZM_LV_0, "Alloc mm buf Fail!");
        return;
    }

    zfwBufSetSize(dev, buf, 0);



    zfTxGenMmHeader(dev, ZM_WLAN_FRAME_TYPE_PSPOLL, wd->sta.bssid, header, 0, buf, 0, 0);

    header[0] = 20;
    header[4] |= 0x1000;
    header[5] = wd->sta.aid | 0xc000;
    hlen = 16 + 8;
    if ((err = zfHpSend(dev, header, hlen, ((void*)0), 0, ((void*)0), 0, buf, 0,
            ZM_INTERNAL_ALLOC_BUF, 0, 0xff)) != ZM_SUCCESS)
    {
        goto zlError;
    }

    return;

zlError:

    zfwBufFree(dev, buf, 0);
    return;

}
