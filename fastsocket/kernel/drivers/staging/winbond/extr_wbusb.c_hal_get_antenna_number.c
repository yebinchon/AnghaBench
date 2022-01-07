
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wb35_reg {int BB2C; } ;
struct hw_data {struct wb35_reg reg; } ;


 int BIT (int) ;

u8 hal_get_antenna_number(struct hw_data *pHwData)
{
 struct wb35_reg *reg = &pHwData->reg;

 if ((reg->BB2C & BIT(11)) == 0)
  return 0;
 else
  return 1;
}
