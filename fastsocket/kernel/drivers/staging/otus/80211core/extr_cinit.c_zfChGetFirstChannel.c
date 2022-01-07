
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_5__ {TYPE_1__* allowChannel; } ;
struct TYPE_6__ {TYPE_2__ regulationTable; } ;
struct TYPE_4__ {int channelFlags; int channel; } ;


 int FALSE ;
 int TRUE ;
 int ZM_REG_FLAG_CHANNEL_PASSIVE ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfChGetFirstChannel(zdev_t* dev, u8_t* pbPassive)
{
    u8_t bPassive;

    zmw_get_wlan_dev(dev);


    if ( pbPassive == ((void*)0) )
    {
        pbPassive = &bPassive;
    }

   if ( wd->regulationTable.allowChannel[0].channelFlags & ZM_REG_FLAG_CHANNEL_PASSIVE )
    {
        *pbPassive = TRUE;
    }
    else
    {
        *pbPassive = FALSE;
    }

    return wd->regulationTable.allowChannel[0].channel;
}
