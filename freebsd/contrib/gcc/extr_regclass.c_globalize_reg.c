
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SET_HARD_REG_BIT (int ,int) ;
 int STACK_POINTER_REGNUM ;
 int call_fixed_reg_set ;
 int* call_fixed_regs ;
 int* call_really_used_regs ;
 int call_used_reg_set ;
 int* call_used_regs ;
 int error (char*) ;
 int fixed_reg_set ;
 int* fixed_regs ;
 int* global_regs ;
 scalar_t__ no_global_reg_vars ;
 int regs_invalidated_by_call ;
 int warning (int ,char*) ;

void
globalize_reg (int i)
{
  if (fixed_regs[i] == 0 && no_global_reg_vars)
    error ("global register variable follows a function definition");

  if (global_regs[i])
    {
      warning (0, "register used for two global register variables");
      return;
    }

  if (call_used_regs[i] && ! fixed_regs[i])
    warning (0, "call-clobbered register used for global register variable");

  global_regs[i] = 1;




  if (i != STACK_POINTER_REGNUM)
    SET_HARD_REG_BIT (regs_invalidated_by_call, i);


  if (fixed_regs[i])
    return;

  fixed_regs[i] = call_used_regs[i] = call_fixed_regs[i] = 1;




  SET_HARD_REG_BIT (fixed_reg_set, i);
  SET_HARD_REG_BIT (call_used_reg_set, i);
  SET_HARD_REG_BIT (call_fixed_reg_set, i);
}
