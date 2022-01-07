
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_data {scalar_t__ phy_type; } ;


 scalar_t__ RF_MAXIM_V1 ;
 scalar_t__ RF_WB_242 ;
 scalar_t__ RF_WB_242_1 ;
 int Wb35Reg_ReadSync (struct hw_data*,int,int*) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;
 int msleep (int) ;

void Uxx_power_on_procedure( struct hw_data * pHwData )
{
 u32 ltmp, loop;

 if( pHwData->phy_type <= RF_MAXIM_V1 )
  Wb35Reg_WriteSync( pHwData, 0x03d4, 0xffffff38 );
 else
 {
  Wb35Reg_WriteSync( pHwData, 0x03f4, 0xFF5807FF );


  Wb35Reg_WriteSync( pHwData, 0x03d4, 0x80 );
  msleep(10);
  Wb35Reg_WriteSync( pHwData, 0x03d4, 0xb8 );
  msleep(10);

  ltmp = 0x4968;
  if( (pHwData->phy_type == RF_WB_242) ||
   (RF_WB_242_1 == pHwData->phy_type) )
   ltmp = 0x4468;
  Wb35Reg_WriteSync( pHwData, 0x03d0, ltmp );

  Wb35Reg_WriteSync( pHwData, 0x03d4, 0xa0 );

  msleep(20);
  Wb35Reg_ReadSync( pHwData, 0x03d0, &ltmp );
  loop = 500;
  while( !(ltmp & 0x20) && loop-- )
  {
   msleep(10);
   if( !Wb35Reg_ReadSync( pHwData, 0x03d0, &ltmp ) )
    break;
  }

  Wb35Reg_WriteSync( pHwData, 0x03d4, 0xe0 );
 }

 Wb35Reg_WriteSync( pHwData, 0x03b0, 1 );
 msleep(10);


 Wb35Reg_WriteSync( pHwData, 0x03f8, 0x7ff );
}
