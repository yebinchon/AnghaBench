
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
typedef int u16_t ;
struct TYPE_5__ {size_t allowChannelCnt; TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {int channelFlags; int channel; } ;


 size_t FALSE ;
 size_t TRUE ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfChGetLastChannel(zdev_t* dev, u8_t* pbPassive)
{
    u8_t bPassive;
    u8_t ChannelIndex;

    zmw_get_wlan_dev(dev);

    ChannelIndex = wd->regulationTable.allowChannelCnt-1;


    if ( pbPassive == ((void*)0) )
    {
        pbPassive = &bPassive;
    }

    if ( wd->regulationTable.allowChannel[ChannelIndex].channelFlags
            & ZM_REG_FLAG_CHANNEL_PASSIVE )
    {
        *pbPassive = TRUE;
    }
    else
    {
        *pbPassive = FALSE;
    }

    return wd->regulationTable.allowChannel[ChannelIndex].channel;
}
