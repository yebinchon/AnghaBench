
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsHpPriv {int dot11Mode; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;






 TYPE_1__* wd ;
 int zfDelayWriteInternalReg (int *,int,int) ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfHpSetApStaMode(zdev_t* dev, u8_t mode)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv = wd->hpPrivate;
    hpPriv->dot11Mode = mode;

    switch(mode)
    {
        case 131:
            zfDelayWriteInternalReg(dev, 0x1c3700, 0x0f0000a1);
            zfDelayWriteInternalReg(dev, 0x1c3c40, 0x1);
            break;

        case 128:
            zfDelayWriteInternalReg(dev, 0x1c3700, 0x0f000002);
            zfDelayWriteInternalReg(dev, 0x1c3c40, 0x1);
            break;

        case 130:
            zfDelayWriteInternalReg(dev, 0x1c3700, 0x0f000000);
            zfDelayWriteInternalReg(dev, 0x1c3c40, 0x1);
            break;

        case 129:
            zfDelayWriteInternalReg(dev, 0x1c3700, 0x0f0000e0);
            zfDelayWriteInternalReg(dev, 0x1c3c40, 0x41);
            break;

        default:
            goto skip;
    }

    zfFlushDelayWrite(dev);

skip:
    return 0;
}
