
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {int hwFrequency; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 scalar_t__ ZM_BEACON_BUFFER_ADDRESS ;
 scalar_t__ ZM_MAC_REG_BCN_CTRL ;
 scalar_t__ ZM_MAC_REG_BCN_LENGTH ;
 scalar_t__ ZM_MAC_REG_BCN_PLCP ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,scalar_t__,int) ;
 int zfFlushDelayWrite (int *) ;
 int zfwBufFree (int *,int *,int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_readh (int *,int *,scalar_t__) ;

void zfHpSendBeacon(zdev_t* dev, zbuf_t* buf, u16_t len)
{
    u32_t hw, lw;
    u16_t i;
    zmw_get_wlan_dev(dev);


    for (i = 0; i<len; i+=4)
    {
        lw = zmw_tx_buf_readh(dev, buf, i);
        hw = zmw_tx_buf_readh(dev, buf, i+2);

        zfDelayWriteInternalReg(dev, ZM_BEACON_BUFFER_ADDRESS+i, (hw<<16)+lw);
    }


    if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency < 3000)
    {
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PLCP, ((len+4)<<(3+16))+0x0400);
    }
    else
    {
        zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PLCP, ((len+4)<<(16))+0x001b);
    }


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_LENGTH, len+4);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_CTRL, 1);
    zfFlushDelayWrite(dev);


    zfwBufFree(dev, buf, 0);

    return;
}
