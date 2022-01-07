
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_11__ {scalar_t__ beacon; } ;
struct TYPE_10__ {scalar_t__ misc; scalar_t__ retries; scalar_t__ fragment; scalar_t__ code; scalar_t__ nwid; } ;
struct TYPE_8__ {int qual; long level; int updated; scalar_t__ noise; } ;
struct iw_statistics {TYPE_4__ miss; TYPE_3__ discard; TYPE_1__ qual; int status; } ;
typedef scalar_t__ U32 ;
struct TYPE_9__ {int LinkQuality; scalar_t__ dwTsrErr; } ;
struct TYPE_12__ {scalar_t__ byBBType; int byCurrSQ; scalar_t__ bLinkPass; struct iw_statistics wstats; TYPE_2__ scStatistic; scalar_t__ uCurrRSSI; int eOPMode; } ;
typedef TYPE_5__* PSDevice ;
typedef int BYTE ;


 scalar_t__ BB_TYPE_11B ;
 scalar_t__ BB_TYPE_11G ;
 int RFvRSSITodBm (TYPE_5__*,int,long*) ;
 scalar_t__ TRUE ;
 TYPE_5__* netdev_priv (struct net_device*) ;

struct iw_statistics *iwctl_get_wireless_stats(struct net_device *dev)
{
 PSDevice pDevice = netdev_priv(dev);
 long ldBm;

 pDevice->wstats.status = pDevice->eOPMode;
 pDevice->wstats.qual.qual = pDevice->byCurrSQ;

 RFvRSSITodBm(pDevice, (BYTE)(pDevice->uCurrRSSI), &ldBm);
 pDevice->wstats.qual.level = ldBm;

 pDevice->wstats.qual.noise = 0;
 pDevice->wstats.qual.updated = 1;
 pDevice->wstats.discard.nwid = 0;
 pDevice->wstats.discard.code = 0;
 pDevice->wstats.discard.fragment = 0;
 pDevice->wstats.discard.retries = (U32)pDevice->scStatistic.dwTsrErr;
 pDevice->wstats.discard.misc = 0;
 pDevice->wstats.miss.beacon = 0;

 return &pDevice->wstats;
}
