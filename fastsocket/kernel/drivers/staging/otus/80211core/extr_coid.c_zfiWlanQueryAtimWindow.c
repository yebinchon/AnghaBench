
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_3__ {int atimWindow; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanQueryAtimWindow(zdev_t* dev)
{
    u16_t atimWindow;

    zmw_get_wlan_dev(dev);

    atimWindow = wd->sta.atimWindow;

    return atimWindow;
}
