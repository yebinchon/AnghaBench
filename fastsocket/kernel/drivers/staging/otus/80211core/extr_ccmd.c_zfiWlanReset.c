
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_2__ {int state; } ;


 int ZM_WLAN_STATE_DISABLED ;
 TYPE_1__* wd ;
 int zfWlanReset (int *) ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanReset(zdev_t *dev)
{
 zmw_get_wlan_dev(dev);

 wd->state = ZM_WLAN_STATE_DISABLED;

 return zfWlanReset(dev);
}
