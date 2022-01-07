
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int maxTxPower5; int maxTxPower2; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryMaxTxPower(zdev_t* dev, u8_t *power2, u8_t *power5)
{
    zmw_get_wlan_dev(dev);

    *power2 = wd->maxTxPower2;
    *power5 = wd->maxTxPower5;
}
