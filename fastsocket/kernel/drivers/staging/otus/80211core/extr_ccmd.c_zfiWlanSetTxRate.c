
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_2__ {int txMCS; int txMT; } ;


 int ZM_ERR_INVALID_TX_RATE ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 int* zcRateToMCS ;
 int* zcRateToMT ;
 int zmw_get_wlan_dev (int *) ;

u16_t zfiWlanSetTxRate(zdev_t *dev, u16_t rate)
{

 zmw_get_wlan_dev(dev);

 if (rate <= 12) {
  wd->txMCS = zcRateToMCS[rate];
  wd->txMT = zcRateToMT[rate];
  return ZM_SUCCESS;
 } else if ((rate <= 28) || (rate == 13 + 32)) {
  wd->txMCS = rate - 12 - 1;
  wd->txMT = 2;
  return ZM_SUCCESS;
 }

 return ZM_ERR_INVALID_TX_RATE;
}
