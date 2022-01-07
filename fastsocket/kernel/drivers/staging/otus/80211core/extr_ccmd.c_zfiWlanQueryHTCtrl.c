
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct TYPE_3__ {int defaultTA; int htCtrlSG; int htCtrlSTBC; int htCtrlBandwidth; int preambleTypeHT; } ;
struct TYPE_4__ {int forceTxTPC; int enableWDS; int enableAggregation; TYPE_1__ sta; int preambleType; } ;


 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQueryHTCtrl(zdev_t *dev, u32_t *setting, u32_t *forceTxTPC)
{
 zmw_get_wlan_dev(dev);

 setting[0] = wd->preambleType;
 setting[1] = wd->sta.preambleTypeHT;
 setting[2] = wd->sta.htCtrlBandwidth;
 setting[3] = wd->sta.htCtrlSTBC;
 setting[4] = wd->sta.htCtrlSG;
 setting[5] = wd->sta.defaultTA;
 setting[6] = wd->enableAggregation;
 setting[7] = wd->enableWDS;

 *forceTxTPC = wd->forceTxTPC;
}
