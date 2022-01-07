
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsHpPriv {int ibssBcnEnabled; int ibssBcnInterval; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_BEACON_BUFFER_ADDRESS ;
 int ZM_MAC_REG_BCN_ADDR ;
 int ZM_MAC_REG_BCN_CTRL ;
 int ZM_MAC_REG_BCN_PERIOD ;
 int ZM_MAC_REG_PRETBTT ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int ,int) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpEnableBeacon(zdev_t* dev, u16_t mode, u16_t bcnInterval, u16_t dtim, u8_t enableAtim)
{
    u32_t value;

    zmw_get_wlan_dev(dev);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_CTRL, 0);

    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_ADDR, ZM_BEACON_BUFFER_ADDRESS);

    value = bcnInterval;

    value |= (((u32_t) dtim) << 16);

    if (mode == ZM_MODE_AP)
    {

        value |= 0x1000000;
    }
    else if (mode == ZM_MODE_IBSS)
    {
        value |= 0x2000000;

  if ( enableAtim )
  {
   value |= 0x4000000;
  }
  ((struct zsHpPriv*)wd->hpPrivate)->ibssBcnEnabled = 1;
        ((struct zsHpPriv*)wd->hpPrivate)->ibssBcnInterval = value;
    }
    zfDelayWriteInternalReg(dev, ZM_MAC_REG_PRETBTT, (bcnInterval-6)<<16);


    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, value);
    zfFlushDelayWrite(dev);
}
