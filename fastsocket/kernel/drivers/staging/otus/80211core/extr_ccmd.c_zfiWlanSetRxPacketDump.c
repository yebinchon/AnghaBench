
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_2__ {int rxPacketDump; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetRxPacketDump(zdev_t *dev, u32_t setting)
{
 zmw_get_wlan_dev(dev);
 if (setting)
  wd->rxPacketDump = 1;
 else
  wd->rxPacketDump = 0;
}
