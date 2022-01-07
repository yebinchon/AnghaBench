
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef scalar_t__ u32_t ;
typedef size_t u16_t ;
struct zsBssInfo {size_t frequency; int channel; struct zsBssInfo* next; } ;
struct TYPE_9__ {size_t allowChannelCnt; TYPE_3__* allowChannel; } ;
struct TYPE_6__ {struct zsBssInfo* head; } ;
struct TYPE_7__ {TYPE_1__ bssList; } ;
struct TYPE_10__ {TYPE_4__ regulationTable; TYPE_2__ sta; } ;
struct TYPE_8__ {int channel; } ;


 scalar_t__ ZM_ADHOCBAND_A ;
 scalar_t__ ZM_ADHOCBAND_ABG ;
 scalar_t__ ZM_ADHOCBAND_B ;
 scalar_t__ ZM_ADHOCBAND_BG ;
 scalar_t__ ZM_ADHOCBAND_G ;
 int printk (char*,size_t,size_t) ;
 TYPE_5__* wd ;
 size_t zfChGetFirst2GhzChannel (int *) ;
 size_t zfChGetFirst5GhzChannel (int *) ;
 size_t zfFindMinimumUtilizationChannelIndex (int *,size_t*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfFindCleanFrequency(zdev_t* dev, u32_t adhocMode)
{
    u8_t i, j;
    u16_t returnChannel;
    u16_t count_24G = 0, min24GIndex = 0;
    u16_t count_5G = 0, min5GIndex = 0;
    u16_t CombinationBssNumberIn24G[15] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    u16_t BssNumberIn24G[17] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    u16_t Array_24G[15] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    u16_t BssNumberIn5G[31] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    u16_t Array_5G[31] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    struct zsBssInfo* pBssInfo;

    zmw_get_wlan_dev(dev);

    if ((pBssInfo = wd->sta.bssList.head) == ((void*)0))
    {
        if( adhocMode == ZM_ADHOCBAND_B || adhocMode == ZM_ADHOCBAND_G ||
            adhocMode == ZM_ADHOCBAND_BG || adhocMode == ZM_ADHOCBAND_ABG )
        {
            returnChannel = zfChGetFirst2GhzChannel(dev);
        }
        else
        {
            returnChannel = zfChGetFirst5GhzChannel(dev);
        }

        return returnChannel;
    }


    zmw_declare_for_critical_section();
    zmw_enter_critical_section(dev);
    for (i = 0; i < wd->regulationTable.allowChannelCnt; i++)
    {
        if (wd->regulationTable.allowChannel[i].channel < 3000)
        {
            Array_24G[count_24G] = wd->regulationTable.allowChannel[i].channel;
            count_24G++;
        }
        else
        {
            count_5G++;
            Array_5G[i] = wd->regulationTable.allowChannel[i].channel;
        }
    }
    zmw_leave_critical_section(dev);

    while( pBssInfo != ((void*)0) )
    {

        if( adhocMode == ZM_ADHOCBAND_B || adhocMode == ZM_ADHOCBAND_G ||
            adhocMode == ZM_ADHOCBAND_BG || adhocMode == ZM_ADHOCBAND_ABG )
        {
            for( i=0; i<=(count_24G+3); i++ )
            {
                if( pBssInfo->frequency == Array_24G[i] )
                {
                    BssNumberIn24G[pBssInfo->channel+1]++;
                }
            }
        }


        if( adhocMode == ZM_ADHOCBAND_A || adhocMode == ZM_ADHOCBAND_ABG )
        {
            for( i=0; i<count_5G; i++ )
            {
                if( pBssInfo->frequency == Array_5G[i] )
                {
                    BssNumberIn5G[i]++;
                }
            }
        }

        pBssInfo = pBssInfo->next;
    }
    if( adhocMode == ZM_ADHOCBAND_B || adhocMode == ZM_ADHOCBAND_G ||
        adhocMode == ZM_ADHOCBAND_BG || adhocMode == ZM_ADHOCBAND_ABG )
    {

        for( j=0; j<count_24G; j++ )
        {
            CombinationBssNumberIn24G[j] = BssNumberIn24G[j] + BssNumberIn24G[j+1] +
                                           BssNumberIn24G[j+2] + BssNumberIn24G[j+3] +
                                           BssNumberIn24G[j+4];


        }


        min24GIndex = zfFindMinimumUtilizationChannelIndex(dev, CombinationBssNumberIn24G, count_24G);
    }


    if( adhocMode == ZM_ADHOCBAND_A || adhocMode == ZM_ADHOCBAND_ABG )
    {
        min5GIndex = zfFindMinimumUtilizationChannelIndex(dev, BssNumberIn5G, count_5G);
    }

    if( adhocMode == ZM_ADHOCBAND_B || adhocMode == ZM_ADHOCBAND_G || adhocMode == ZM_ADHOCBAND_BG )
    {
        return Array_24G[min24GIndex];
    }
    else if( adhocMode == ZM_ADHOCBAND_A )
    {
        return Array_5G[min5GIndex];
    }
    else if( adhocMode == ZM_ADHOCBAND_ABG )
    {
        if ( CombinationBssNumberIn24G[min24GIndex] <= BssNumberIn5G[min5GIndex] )
            return Array_24G[min24GIndex];
        else
            return Array_5G[min5GIndex];
    }
    else
        return 2412;
}
