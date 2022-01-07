
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {TYPE_1__* oppositeInfo; int oppositeCount; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {int valid; int camIdx; int wpaState; scalar_t__ pkInstalled; int aliveCounter; } ;


 int ZM_IBSS_PEER_ALIVE_COUNTER ;
 int ZM_STA_WPA_STATE_INIT ;
 TYPE_3__* wd ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static void zfStaInitCommonOppositeInfo(zdev_t* dev, int i)
{
    zmw_get_wlan_dev(dev);


    wd->sta.oppositeInfo[i].valid = 1;
    wd->sta.oppositeInfo[i].aliveCounter = ZM_IBSS_PEER_ALIVE_COUNTER;
    wd->sta.oppositeCount++;







}
