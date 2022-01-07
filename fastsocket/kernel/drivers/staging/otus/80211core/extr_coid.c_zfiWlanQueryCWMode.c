
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int cw_mode; } ;
struct TYPE_4__ {TYPE_1__ cwm; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanQueryCWMode(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    return wd->cwm.cw_mode;
}
