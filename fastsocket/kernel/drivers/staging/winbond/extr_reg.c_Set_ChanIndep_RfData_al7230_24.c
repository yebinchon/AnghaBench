
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct hw_data {int* phy_para; } ;


 int* al7230_rf_data_24 ;

void Set_ChanIndep_RfData_al7230_24( struct hw_data * pHwData, u32 *pltmp ,char number)
{
 u8 i;

 for( i=0; i<number; i++ )
 {
  pHwData->phy_para[i] = al7230_rf_data_24[i];
  pltmp[i] = (1 << 31) | (0 << 30) | (24 << 24) | (al7230_rf_data_24[i]&0xffffff);
 }
}
