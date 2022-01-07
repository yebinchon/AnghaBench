
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GLOBAL_POINTER_REGNUM ;
 unsigned int GP_REG_FIRST ;
 unsigned int GP_REG_LAST ;
 unsigned int PIC_FUNCTION_ADDR_REGNUM ;
 int TARGET_ABICALLS ;
 int TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TARGET_NEWABI ;
 scalar_t__* call_used_regs ;
 scalar_t__ current_function_has_nonlocal_goto ;
 scalar_t__ current_function_is_leaf ;
 scalar_t__ current_function_profile ;
 int current_function_uses_const_pool ;
 int * fixed_regs ;
 int mips_function_has_gp_insn () ;
 int * regs_ever_live ;

__attribute__((used)) static unsigned int
mips_global_pointer (void)
{
  unsigned int regno;


  if (!TARGET_ABICALLS)
    return GLOBAL_POINTER_REGNUM;


  if (!TARGET_EXPLICIT_RELOCS)
    return GLOBAL_POINTER_REGNUM;



  if (current_function_profile)
    return GLOBAL_POINTER_REGNUM;



  if (current_function_has_nonlocal_goto)
    return GLOBAL_POINTER_REGNUM;
  if (!regs_ever_live[GLOBAL_POINTER_REGNUM]
      && !current_function_uses_const_pool
      && !mips_function_has_gp_insn ())
    return 0;



  if (TARGET_NEWABI && current_function_is_leaf)
    for (regno = GP_REG_FIRST; regno <= GP_REG_LAST; regno++)
      if (!regs_ever_live[regno]
   && call_used_regs[regno]
   && !fixed_regs[regno]
   && regno != PIC_FUNCTION_ADDR_REGNUM)
 return regno;

  return GLOBAL_POINTER_REGNUM;
}
