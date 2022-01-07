
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

u16_t zfHpAddAllowChannel(zdev_t* dev, u16_t freq)
{
    u16_t i, j, arrayIndex;

    zmw_get_wlan_dev(dev);

    for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
    {
        if (wd->regulationTable.allowChannel[i].channel == freq)
            break;
    }

    if ( i == wd->regulationTable.allowChannelCnt)
    {
        for (j = 0; j < wd->regulationTable.allowChannelCnt; j++)
        {
            if (wd->regulationTable.allowChannel[j].channel > freq)
                break;
        }




        arrayIndex = j;

        if (arrayIndex < wd->regulationTable.allowChannelCnt)
        {
            for (j = wd->regulationTable.allowChannelCnt; j > arrayIndex; j--)
                wd->regulationTable.allowChannel[j] = wd->regulationTable.allowChannel[j - 1];
        }
        wd->regulationTable.allowChannel[arrayIndex].channel = freq;

        wd->regulationTable.allowChannelCnt++;
    }

    return 0;
}
