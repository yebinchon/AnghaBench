
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_address_info {scalar_t__ type; scalar_t__ reg; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ADDRESS_REG ;
 scalar_t__ mips_classify_address (struct mips_address_info*,int ,int,int) ;
 scalar_t__ stack_pointer_rtx ;

bool
mips_stack_address_p (rtx x, enum machine_mode mode)
{
  struct mips_address_info addr;

  return (mips_classify_address (&addr, x, mode, 0)
   && addr.type == ADDRESS_REG
   && addr.reg == stack_pointer_rtx);
}
