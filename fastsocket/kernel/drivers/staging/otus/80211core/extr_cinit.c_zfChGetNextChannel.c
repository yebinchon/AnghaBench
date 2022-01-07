
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef scalar_t__ u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {scalar_t__ channel; int channelFlags; } ;


 size_t FALSE ;
 size_t TRUE ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfChGetNextChannel(zdev_t* dev, u16_t frequency, u8_t* pbPassive)
{
    u8_t i;
    u8_t bPassive;

    zmw_get_wlan_dev(dev);


    if ( pbPassive == ((void*)0) )
    {
        pbPassive = &bPassive;
    }

    for( i=0; i<wd->regulationTable.allowChannelCnt; i++ )
    {
        if ( wd->regulationTable.allowChannel[i].channel == frequency )
        {
            if ( i == (wd->regulationTable.allowChannelCnt-1) )
            {
                i = 0;
            }
            else
            {
                i++;
            }

            if ( wd->regulationTable.allowChannel[i].channelFlags
                    & ZM_REG_FLAG_CHANNEL_PASSIVE )
            {
                *pbPassive = TRUE;
            }
            else
            {
                *pbPassive = FALSE;
            }

            return wd->regulationTable.allowChannel[i].channel;
        }
    }

    return 0xffff;
}
