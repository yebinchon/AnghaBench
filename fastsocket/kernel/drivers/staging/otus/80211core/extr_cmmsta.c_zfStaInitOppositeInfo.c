
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {TYPE_1__* oppositeInfo; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {int aliveCounter; scalar_t__ valid; } ;


 int ZM_IBSS_PEER_ALIVE_COUNTER ;
 int ZM_MAX_OPPOSITE_COUNT ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfStaInitOppositeInfo(zdev_t* dev)
{
    int i;

    zmw_get_wlan_dev(dev);

    for(i=0; i<ZM_MAX_OPPOSITE_COUNT; i++)
    {
        wd->sta.oppositeInfo[i].valid = 0;
        wd->sta.oppositeInfo[i].aliveCounter = ZM_IBSS_PEER_ALIVE_COUNTER;
    }
}
