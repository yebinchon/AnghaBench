
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hw_data {int dummy; } ;


 int BitReverse (int ,int) ;
 int Wb35Reg_Write (struct hw_data*,int,int) ;
 int * max2828_power_data_50 ;

u8 RFSynthesizer_SetMaxim2828_50Power( struct hw_data * pHwData, u8 index )
{
 u32 PowerData;
 if( index > 1 ) index = 1;
 PowerData = (1 << 31) | (0 << 30) | (18 << 24) | BitReverse( max2828_power_data_50[index], 18);
 Wb35Reg_Write( pHwData, 0x0864, PowerData );
 return index;
}
