
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb35_reg {int M24_MacControl; } ;
struct hw_data {int CurrentRadioSw; scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;


 int Wb35Reg_Write (struct hw_data*,int,int) ;

__attribute__((used)) static void hal_set_radio_mode(struct hw_data *pHwData, unsigned char radio_off)
{
 struct wb35_reg *reg = &pHwData->reg;

 if (pHwData->SurpriseRemove)
  return;

 if (radio_off)
 {
  pHwData->CurrentRadioSw = 1;
  reg->M24_MacControl &= 0xffffffbf;
 } else {
  pHwData->CurrentRadioSw = 0;
  reg->M24_MacControl |= 0x00000040;
 }
 Wb35Reg_Write(pHwData, 0x0824, reg->M24_MacControl);
}
