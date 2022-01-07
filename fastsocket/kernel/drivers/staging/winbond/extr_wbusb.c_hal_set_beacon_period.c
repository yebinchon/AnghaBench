
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw_data {int BeaconPeriod; int ProbeDelay; scalar_t__ SurpriseRemove; } ;


 int Wb35Reg_Write (struct hw_data*,int,int) ;

__attribute__((used)) static void hal_set_beacon_period(struct hw_data *pHwData, u16 beacon_period)
{
 u32 tmp;

 if (pHwData->SurpriseRemove)
  return;

 pHwData->BeaconPeriod = beacon_period;
 tmp = pHwData->BeaconPeriod << 16;
 tmp |= pHwData->ProbeDelay;
 Wb35Reg_Write(pHwData, 0x0848, tmp);
}
