
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u8_t ;
struct zsHpPriv {scalar_t__ hwFrequency; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 scalar_t__ ZM_CH_G_14 ;
 int reg_write (int,int) ;
 TYPE_1__* wd ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpPowerSaveSetState(zdev_t* dev, u8_t psState)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv = wd->hpPrivate;



    if ( psState == 0 )
    {

        reg_write(0x982C, 0x0000a000);
        reg_write(0x9808, 0x0);

        if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency <= ZM_CH_G_14)
        {


            reg_write (0x98f0, 0x01c20098);
        }
        else
        {


            reg_write (0x98f0, 0x01420098);
        }






        zfFlushDelayWrite(dev);
    }
    else
    {


        reg_write(0x9808, 0x8000000);
        reg_write(0x982C, 0xa000a000);

        if (((struct zsHpPriv*)wd->hpPrivate)->hwFrequency <= ZM_CH_G_14)
        {

            reg_write (0x98f0, 0x00c00018);
        }
        else
        {

            reg_write (0x98f0, 0x00400018);
        }






        zfFlushDelayWrite(dev);
    }
}
