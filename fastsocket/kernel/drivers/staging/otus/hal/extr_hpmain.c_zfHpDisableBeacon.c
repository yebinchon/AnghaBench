
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {scalar_t__ ibssBcnEnabled; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_MAC_REG_BCN_PERIOD ;
 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int ,int ) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpDisableBeacon(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    ((struct zsHpPriv*)wd->hpPrivate)->ibssBcnEnabled = 0;

    zfDelayWriteInternalReg(dev, ZM_MAC_REG_BCN_PERIOD, 0);
    zfFlushDelayWrite(dev);
}
