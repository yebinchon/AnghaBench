
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_2__ {int CurrentRxRateKbps; scalar_t__ CurrentRxRateUpdated; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfiWlanQueryRxRate(zdev_t *dev)
{
 zmw_get_wlan_dev(dev);

 wd->CurrentRxRateUpdated = 0;
 return wd->CurrentRxRateKbps;
}
