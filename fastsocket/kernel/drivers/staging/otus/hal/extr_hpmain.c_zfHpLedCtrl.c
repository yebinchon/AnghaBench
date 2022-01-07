
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct zsHpPriv {scalar_t__* ledMode; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpLedCtrl(zdev_t* dev, u16_t ledId, u8_t mode)
{
    u16_t state;
    zmw_get_wlan_dev(dev);



    if (ledId < 2)
    {
        if (((struct zsHpPriv*)wd->hpPrivate)->ledMode[ledId] != mode)
        {
            ((struct zsHpPriv*)wd->hpPrivate)->ledMode[ledId] = mode;

            state = ((struct zsHpPriv*)wd->hpPrivate)->ledMode[0]
                    | (((struct zsHpPriv*)wd->hpPrivate)->ledMode[1]<<1);
            zfDelayWriteInternalReg(dev, 0x1d0104, state);
            zfFlushDelayWrite(dev);

        }
    }
}
