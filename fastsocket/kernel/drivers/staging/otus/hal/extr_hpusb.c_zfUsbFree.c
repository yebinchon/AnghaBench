
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
struct zsHpPriv {int * remainBuf; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 TYPE_1__* wd ;
 int zfwBufFree (int *,int *,int ) ;
 int zmw_get_wlan_dev (int *) ;

void zfUsbFree(zdev_t* dev)
{
    struct zsHpPriv *halPriv;

    zmw_get_wlan_dev(dev);

    halPriv = (struct zsHpPriv*)wd->hpPrivate;
    return;
}
