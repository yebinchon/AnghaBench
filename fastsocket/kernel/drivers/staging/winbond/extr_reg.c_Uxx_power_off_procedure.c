
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_data {int dummy; } ;


 int Wb35Reg_WriteSync (struct hw_data*,int,int) ;

void Uxx_power_off_procedure( struct hw_data * pHwData )
{

 Wb35Reg_WriteSync( pHwData, 0x03b0, 3 );
 Wb35Reg_WriteSync( pHwData, 0x03f0, 0xf9 );
}
