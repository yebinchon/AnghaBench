
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int dummy; } ;


 int HW_HOST_SEP_HOST_GPR0_REG_ADDR ;
 int HW_HOST_SEP_HOST_GPR3_REG_ADDR ;
 int dbg (char*) ;
 unsigned long sep_read_reg (struct sep_device*,int ) ;

__attribute__((used)) static int sep_start_handler(struct sep_device *sep)
{
 unsigned long reg_val;
 unsigned long error = 0;

 dbg("SEP Driver:--------> sep_start_handler start\n");


 do
  reg_val = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR3_REG_ADDR);
 while (!reg_val);


 if (reg_val == 0x1)

  error = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR0_REG_ADDR);
 dbg("SEP Driver:<-------- sep_start_handler end\n");
 return error;
}
