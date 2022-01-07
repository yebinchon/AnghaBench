
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
struct TYPE_4__ {int privFlags; int channel; } ;


 int ZM_REG_FLAG_CHANNEL_DFS ;
 TYPE_3__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfHpFindFirstNonDfsChannel(zdev_t* dev, u16_t aBand)
{
    u16_t chan = 2412;
    u16_t i;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
    {
        if ((wd->regulationTable.allowChannel[i].privFlags & ZM_REG_FLAG_CHANNEL_DFS) != 0)
        {
            if (aBand)
            {
                if (wd->regulationTable.allowChannel[i].channel > 3000)
                {
                    chan = wd->regulationTable.allowChannel[i].channel;
                    break;
                }
            }
            else
            {
                if (wd->regulationTable.allowChannel[i].channel < 3000)
                {
                    chan = wd->regulationTable.allowChannel[i].channel;
                    break;
                }
            }
        }
    }

    zmw_leave_critical_section(dev);

    return chan;
}
