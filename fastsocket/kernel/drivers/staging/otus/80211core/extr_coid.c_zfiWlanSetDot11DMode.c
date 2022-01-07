
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
struct TYPE_7__ {size_t allowChannelCnt; TYPE_1__* allowChannel; int regionCode; } ;
struct TYPE_6__ {size_t b802_11D; } ;
struct TYPE_8__ {TYPE_3__ regulationTable; TYPE_2__ sta; } ;
struct TYPE_5__ {int channelFlags; } ;


 int NO_ENUMRD ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 TYPE_4__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanSetDot11DMode(zdev_t* dev, u8_t mode)
{
    u8_t i;

    zmw_get_wlan_dev(dev);

    wd->sta.b802_11D = mode;
    if (mode)
    {
        wd->regulationTable.regionCode = NO_ENUMRD;
        for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
            wd->regulationTable.allowChannel[i].channelFlags |= ZM_REG_FLAG_CHANNEL_PASSIVE;
    }
    else
    {
        for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
            wd->regulationTable.allowChannel[i].channelFlags &= ~ZM_REG_FLAG_CHANNEL_PASSIVE;
    }

    return 0;
}
