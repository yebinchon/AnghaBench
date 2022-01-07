
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_5__ {int ChannelInfo; } ;
struct TYPE_6__ {TYPE_1__ HtInfo; } ;
struct TYPE_7__ {TYPE_2__ ie; } ;
struct TYPE_8__ {TYPE_3__ sta; } ;


 int ExtHtCap_RIFSMode ;
 TYPE_4__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiCheckRifs(zdev_t *dev)
{
 zmw_get_wlan_dev(dev);

 if (wd->sta.ie.HtInfo.ChannelInfo & ExtHtCap_RIFSMode)
  ;



}
