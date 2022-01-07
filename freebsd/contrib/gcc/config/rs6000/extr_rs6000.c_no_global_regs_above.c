
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* global_regs ;

__attribute__((used)) static bool
no_global_regs_above (int first_greg)
{
  int i;
  for (i = 0; i < 32 - first_greg; i++)
    if (global_regs[first_greg + i])
      return 0;
  return 1;
}
