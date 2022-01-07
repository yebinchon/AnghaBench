
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsHpPriv {int halRxInfo; } ;
struct zsHalRxInfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 TYPE_1__* wd ;
 int zfMemoryCopy (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfHpQueryMonHalRxInfo(zdev_t* dev, u8_t *monHalRxInfo)
{
    zmw_get_wlan_dev(dev);
    zfMemoryCopy(monHalRxInfo,
                (u8_t*)&(((struct zsHpPriv*)wd->hpPrivate)->halRxInfo),
                sizeof(struct zsHalRxInfo));
}
