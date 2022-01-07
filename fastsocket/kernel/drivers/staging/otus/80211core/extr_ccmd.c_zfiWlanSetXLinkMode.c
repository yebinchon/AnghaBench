
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_2__ {scalar_t__ XLinkMode; } ;


 TYPE_1__* wd ;
 int zfHpSetSnifferMode (int *,int) ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanSetXLinkMode(zdev_t *dev, u32_t setValue)
{
 zmw_get_wlan_dev(dev);

 wd->XLinkMode = setValue;
 if (setValue) {

  zfHpSetSnifferMode(dev, 1);
 } else
  zfHpSetSnifferMode(dev, 0);
}
