
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {size_t channel; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanQueryAllowChannels(zdev_t* dev, u16_t *channels)
{
    u16_t ii;
    zmw_get_wlan_dev(dev);

    for (ii = 0; ii < wd->regulationTable.allowChannelCnt; ii++)
    {
        channels[ii] = wd->regulationTable.allowChannel[ii].channel;
    }

    return wd->regulationTable.allowChannelCnt;
}
