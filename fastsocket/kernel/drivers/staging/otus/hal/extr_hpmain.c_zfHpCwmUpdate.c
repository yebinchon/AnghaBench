
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct zsHpPriv {scalar_t__ extBusy; scalar_t__ ctlBusy; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 TYPE_1__* wd ;
 int zfCoreCwmBusy (int *,int ) ;
 int zfCwmIsExtChanBusy (scalar_t__,scalar_t__) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfHpCwmUpdate(zdev_t* dev)
{
    struct zsHpPriv* hpPriv;

    zmw_get_wlan_dev(dev);
    hpPriv=wd->hpPrivate;

    zfCoreCwmBusy(dev, zfCwmIsExtChanBusy(hpPriv->ctlBusy, hpPriv->extBusy));

    hpPriv->ctlBusy = 0;
    hpPriv->extBusy = 0;

    return 0;
}
