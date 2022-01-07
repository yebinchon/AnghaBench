
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9320_reg {int value; int address; } ;
struct ili9320 {int dummy; } ;


 int ili9320_write (struct ili9320*,int ,int ) ;

int ili9320_write_regs(struct ili9320 *ili,
         struct ili9320_reg *values,
         int nr_values)
{
 int index;
 int ret;

 for (index = 0; index < nr_values; index++, values++) {
  ret = ili9320_write(ili, values->address, values->value);
  if (ret != 0)
   return ret;
 }

 return 0;
}
