
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw_data {int dummy; } ;


 unsigned char Wb35Reg_ReadSync (struct hw_data*,int,int *) ;

__attribute__((used)) static unsigned char hal_get_dxx_reg(struct hw_data *pHwData, u16 number, u32 * pValue)
{
 if (number < 0x1000)
  number += 0x1000;
 return Wb35Reg_ReadSync(pHwData, number, pValue);
}
