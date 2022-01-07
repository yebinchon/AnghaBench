
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wb35_reg {int U1B0; } ;
struct hw_data {int CurrentRadioHw; scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;


 int Wb35Reg_Read (struct hw_data*,int,int*) ;

__attribute__((used)) static u8 hal_get_hw_radio_off(struct hw_data * pHwData)
{
 struct wb35_reg *reg = &pHwData->reg;

 if (pHwData->SurpriseRemove)
  return 1;


 Wb35Reg_Read(pHwData, 0x3b0, &reg->U1B0);
 if ((reg->U1B0 & 0x00010000)) {
  pHwData->CurrentRadioHw = 1;
  return 1;
 } else {
  pHwData->CurrentRadioHw = 0;
  return 0;
 }
}
