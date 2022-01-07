
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_2__ {int ExtOffset; int BandWidth40; } ;


 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryFrequencyHT(zdev_t* dev, u32_t *bandWidth, u32_t *extOffset)
{
    zmw_get_wlan_dev(dev);

    *bandWidth = wd->BandWidth40;
    *extOffset = wd->ExtOffset;
}
