
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_reg {int D00_DmaControl; } ;
struct hw_data {struct wb35_reg reg; } ;


 int HAL_USB_MODE_BURST (struct hw_data*) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;

void Dxx_initial( struct hw_data * pHwData )
{
 struct wb35_reg *reg = &pHwData->reg;



 reg->D00_DmaControl = 0xc0000004;

 if( !HAL_USB_MODE_BURST( pHwData ) )
  reg->D00_DmaControl = 0xc0000000;

 Wb35Reg_WriteSync( pHwData, 0x0400, reg->D00_DmaControl );
}
