
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct hw_data {scalar_t__ phy_type; void* BB54_cal; void* BB3c_cal; } ;


 int BBProcessor_initial (struct hw_data*) ;
 int RFSynthesizer_initial (struct hw_data*) ;
 scalar_t__ RF_WB_242 ;
 scalar_t__ RF_WB_242_1 ;
 int Wb35Reg_ReadSync (struct hw_data*,int,void**) ;
 int Wb35Reg_WriteSync (struct hw_data*,int,void*) ;
 int phy_calibration_winbond (struct hw_data*,int) ;

void Wb35Reg_phy_calibration( struct hw_data * pHwData )
{
 u32 BB3c, BB54;

 if ((pHwData->phy_type == RF_WB_242) ||
  (pHwData->phy_type == RF_WB_242_1)) {
  phy_calibration_winbond ( pHwData, 2412 );
  Wb35Reg_ReadSync( pHwData, 0x103c, &BB3c );
  Wb35Reg_ReadSync( pHwData, 0x1054, &BB54 );

  pHwData->BB3c_cal = BB3c;
  pHwData->BB54_cal = BB54;

  RFSynthesizer_initial(pHwData);
  BBProcessor_initial(pHwData);

  Wb35Reg_WriteSync( pHwData, 0x103c, BB3c );
  Wb35Reg_WriteSync( pHwData, 0x1054, BB54 );
 }
}
