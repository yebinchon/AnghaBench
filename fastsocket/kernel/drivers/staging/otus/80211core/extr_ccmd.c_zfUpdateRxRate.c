
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
struct TYPE_2__ {int modulationType; int rateField; int rxInfo; } ;


 TYPE_1__* wd ;
 int* zcIndextoRateBG ;
 int* zcIndextoRateN20L ;
 int* zcIndextoRateN20S ;
 int* zcIndextoRateN40L ;
 int* zcIndextoRateN40S ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfUpdateRxRate(zdev_t *dev)
{
 u8_t mcs, bandwidth;
 u32_t rxRateKbps = 130000;
 zmw_get_wlan_dev(dev);

 switch (wd->modulationType) {

 case 0x0:
  switch (wd->rateField) {
  case 0x0a:
   rxRateKbps = 1000;
   break;
  case 0x14:
   rxRateKbps = 2000;

  case 0x37:
   rxRateKbps = 5500;
   break;
  case 0x6e:
   rxRateKbps = 11000;
   break;
  default:
   break;
  }
  break;

 case 0x1:
  if (wd->rateField <= 15)
   rxRateKbps = zcIndextoRateBG[wd->rateField];
  break;

 case 0x2:
  mcs = wd->rateField & 0x7F;
  bandwidth = wd->rateField & 0x80;
  if (mcs <= 15) {
   if (bandwidth != 0) {
    if ((wd->rxInfo & 0x80) != 0) {

     rxRateKbps = zcIndextoRateN40S[mcs];
    } else {

     rxRateKbps = zcIndextoRateN40L[mcs];
    }
   } else {
    if ((wd->rxInfo & 0x80) != 0) {

     rxRateKbps = zcIndextoRateN20S[mcs];
    } else {

     rxRateKbps = zcIndextoRateN20L[mcs];
    }
   }
  }
  break;
 default:
  break;
 }





 return rxRateKbps;
}
