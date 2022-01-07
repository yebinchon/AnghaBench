
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GENERATE_DIVIDE_TRAPS ;
 scalar_t__ TARGET_CHECK_ZERO_DIV ;
 scalar_t__ TARGET_FIX_R4000 ;
 scalar_t__ TARGET_FIX_R4400 ;

int
mips_idiv_insns (void)
{
  int count;

  count = 1;
  if (TARGET_CHECK_ZERO_DIV)
    {
      if (GENERATE_DIVIDE_TRAPS)
        count++;
      else
        count += 2;
    }

  if (TARGET_FIX_R4000 || TARGET_FIX_R4400)
    count++;
  return count;
}
