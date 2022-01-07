
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_MMX_REG ;
 int FIRST_SSE_REG ;
 scalar_t__ MMX_REGNO_P (int) ;
 int MMX_REGPARM_MAX ;
 int REGPARM_MAX ;
 scalar_t__ SSE_REGNO_P (int) ;
 int SSE_REGPARM_MAX ;
 int TARGET_64BIT ;
 scalar_t__ TARGET_MACHO ;
 scalar_t__ TARGET_MMX ;
 scalar_t__ TARGET_SSE ;
 int * fixed_regs ;
 int* x86_64_int_parameter_registers ;

bool
ix86_function_arg_regno_p (int regno)
{
  int i;
  if (!TARGET_64BIT)
    {
      if (TARGET_MACHO)
        return (regno < REGPARM_MAX
                || (TARGET_SSE && SSE_REGNO_P (regno) && !fixed_regs[regno]));
      else
        return (regno < REGPARM_MAX
         || (TARGET_MMX && MMX_REGNO_P (regno)
        && (regno < FIRST_MMX_REG + MMX_REGPARM_MAX))
         || (TARGET_SSE && SSE_REGNO_P (regno)
      && (regno < FIRST_SSE_REG + SSE_REGPARM_MAX)));
    }

  if (TARGET_MACHO)
    {
      if (SSE_REGNO_P (regno) && TARGET_SSE)
        return 1;
    }
  else
    {
      if (TARGET_SSE && SSE_REGNO_P (regno)
          && (regno < FIRST_SSE_REG + SSE_REGPARM_MAX))
        return 1;
    }

  if (!regno)
    return 1;
  for (i = 0; i < REGPARM_MAX; i++)
    if (regno == x86_64_int_parameter_registers[i])
      return 1;
  return 0;
}
