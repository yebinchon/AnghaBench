
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
struct TYPE_4__ {int channel; } ;


 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfChGetLast5GhzChannel(zdev_t* dev)
{
    u8_t i;
    u16_t last5Ghzfrequency;

    zmw_get_wlan_dev(dev);

    last5Ghzfrequency = 0;
    for( i=0; i<wd->regulationTable.allowChannelCnt; i++ )
    {
        if ( wd->regulationTable.allowChannel[i].channel > 3000 )
        {
            last5Ghzfrequency = wd->regulationTable.allowChannel[i].channel;
        }
    }

    return last5Ghzfrequency;
}
