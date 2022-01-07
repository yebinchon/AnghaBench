
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_5__ {int txUnicastFrm; } ;
struct TYPE_4__ {int* bssid; scalar_t__ wmeConnected; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ commTally; TYPE_1__ sta; } ;


 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_SUCCESS ;
 int ZM_WLAN_FRAME_TYPE_NULL ;
 int ZM_WLAN_FRAME_TYPE_QOS_NULL ;
 TYPE_3__* wd ;
 int zfHpSend (int *,int*,int,int *,int ,int *,int ,int *,int ,int ,int ,int) ;
 int zfTxGenMmHeader (int *,int ,int*,int*,int ,int *,int ,int ) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufSetSize (int *,int *,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;

void zfSendNullData(zdev_t* dev, u8_t type)
{
    zbuf_t* buf;


    u16_t err;
    u16_t hlen;
    u16_t header[(34+8+1)/2];
    u16_t bcastAddr[3] = {0xffff,0xffff,0xffff};
    u16_t *dstAddr;

    zmw_get_wlan_dev(dev);

    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_msg0_mm(ZM_LV_0, "Alloc mm buf Fail!");
        return;
    }

    zfwBufSetSize(dev, buf, 0);



    if ( wd->wlanMode == ZM_MODE_IBSS)
    {
        dstAddr = bcastAddr;
    }
    else
    {
        dstAddr = wd->sta.bssid;
    }

    if (wd->sta.wmeConnected != 0)
    {

        hlen = zfTxGenMmHeader(dev, ZM_WLAN_FRAME_TYPE_QOS_NULL, dstAddr, header, 0, buf, 0, 0);
    }
    else
    {
        hlen = zfTxGenMmHeader(dev, ZM_WLAN_FRAME_TYPE_NULL, dstAddr, header, 0, buf, 0, 0);
    }

    if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        header[4] |= 0x0100;
    }

    if ( type == 1 )
    {
        header[4] |= 0x1000;
    }
    wd->commTally.txUnicastFrm++;

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
