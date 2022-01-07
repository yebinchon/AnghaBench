
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u32_t ;
struct TYPE_4__ {int RxMacStatus; } ;
struct TYPE_5__ {TYPE_1__ Data; } ;
struct zsAdditionInfo {int* PlcpHeader; TYPE_2__ Tail; } ;
struct TYPE_6__ {int modulationType; int rateField; int rxInfo; int CurrentRxRateUpdated; scalar_t__ CurrentRxRateKbps; } ;


 TYPE_3__* wd ;
 scalar_t__ zfUpdateRxRate (int *) ;
 int zmw_get_wlan_dev (int *) ;

void zfWlanUpdateRxRate(zdev_t *dev, struct zsAdditionInfo *addInfo)
{
 u32_t rxRateKbps;
 zmw_get_wlan_dev(dev);
 if ((addInfo->Tail.Data.RxMacStatus & 0x10) == 0) {

  wd->modulationType = addInfo->Tail.Data.RxMacStatus & 0x03;
  switch (wd->modulationType) {

  case 0x0:
   wd->rateField = addInfo->PlcpHeader[0] & 0xff;
   wd->rxInfo = 0;
   break;

  case 0x1:
   wd->rateField = addInfo->PlcpHeader[0] & 0x0f;
   wd->rxInfo = 0;
   break;

  case 0x2:
   wd->rateField = addInfo->PlcpHeader[3];
   wd->rxInfo = addInfo->PlcpHeader[6];
   break;
  default:
   break;
  }

  rxRateKbps = zfUpdateRxRate(dev);
  if (wd->CurrentRxRateUpdated == 1) {
   if (rxRateKbps > wd->CurrentRxRateKbps)
    wd->CurrentRxRateKbps = rxRateKbps;
  } else {
   wd->CurrentRxRateKbps = rxRateKbps;
   wd->CurrentRxRateUpdated = 1;
  }
 }
}
