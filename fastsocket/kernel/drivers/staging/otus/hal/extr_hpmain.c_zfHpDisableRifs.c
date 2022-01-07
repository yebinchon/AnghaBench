
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {int initFastChannelChangeControl; int initRIFSSearchParams; int initSearchStartDelay; int initAgcControl; int initAGC; int initDesiredSigSize; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int reg_write (int,int ) ;
 TYPE_1__* wd ;
 int zfFlushDelayWrite (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpDisableRifs(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);





    reg_write(0x9850, ((struct zsHpPriv*)wd->hpPrivate)->initDesiredSigSize);


    reg_write(0x985c, ((struct zsHpPriv*)wd->hpPrivate)->initAGC);


    reg_write(0x9800+(24<<2), ((struct zsHpPriv*)wd->hpPrivate)->initAgcControl);


    reg_write(0x9800+(70<<2), ((struct zsHpPriv*)wd->hpPrivate)->initSearchStartDelay);


    reg_write (0x99ec, ((struct zsHpPriv*)wd->hpPrivate)->initRIFSSearchParams);


    reg_write (0x9800+(738<<2), ((struct zsHpPriv*)wd->hpPrivate)->initFastChannelChangeControl);

    zfFlushDelayWrite(dev);

    return;
}
