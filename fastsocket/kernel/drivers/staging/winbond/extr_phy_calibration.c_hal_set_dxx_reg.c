
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hw_data {int dummy; } ;


 unsigned char Wb35Reg_WriteSync (struct hw_data*,int,int ) ;

__attribute__((used)) static unsigned char hal_set_dxx_reg(struct hw_data *pHwData, u16 number, u32 value)
{
 unsigned char ret;

 if (number < 0x1000)
  number += 0x1000;
 ret = Wb35Reg_WriteSync(pHwData, number, value);
 return ret;
}
