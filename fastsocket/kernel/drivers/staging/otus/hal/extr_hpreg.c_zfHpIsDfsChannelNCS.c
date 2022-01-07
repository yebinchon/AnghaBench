
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef size_t u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {size_t channel; size_t privFlags; } ;


 size_t ZM_REG_FLAG_CHANNEL_DFS ;
 size_t ZM_REG_FLAG_CHANNEL_DFS_CLEAR ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfHpIsDfsChannelNCS(zdev_t* dev, u16_t freq)
{
    u8_t flag = ZM_REG_FLAG_CHANNEL_DFS;
    u16_t i;
    zmw_get_wlan_dev(dev);

    for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
    {

        if (wd->regulationTable.allowChannel[i].channel == freq)
        {
            flag = wd->regulationTable.allowChannel[i].privFlags;
            break;
        }
    }

    return (flag & (ZM_REG_FLAG_CHANNEL_DFS|ZM_REG_FLAG_CHANNEL_DFS_CLEAR));
}
