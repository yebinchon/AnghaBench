
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wb35_reg {int M00_MacControl; } ;
struct hw_data {scalar_t__ SurpriseRemove; struct wb35_reg reg; } ;


 int Wb35Reg_Write (struct hw_data*,int,int) ;

__attribute__((used)) static void hal_set_accept_promiscuous(struct hw_data *pHwData, u8 enable)
{
 struct wb35_reg *reg = &pHwData->reg;

 if (pHwData->SurpriseRemove)
  return;
 if (enable) {
  reg->M00_MacControl |= 0x00400000;
  Wb35Reg_Write(pHwData, 0x0800, reg->M00_MacControl);
 } else {
  reg->M00_MacControl &= ~0x00400000;
  Wb35Reg_Write(pHwData, 0x0800, reg->M00_MacControl);
 }
}
