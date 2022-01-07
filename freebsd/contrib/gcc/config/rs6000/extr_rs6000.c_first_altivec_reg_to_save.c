
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ABI_DARWIN ;
 scalar_t__ DEFAULT_ABI ;
 int FIRST_ALTIVEC_REGNO ;
 int LAST_ALTIVEC_REGNO ;
 int TARGET_ALTIVEC ;
 int TARGET_ALTIVEC_ABI ;
 scalar_t__ current_function_calls_eh_return ;
 scalar_t__* regs_ever_live ;

__attribute__((used)) static int
first_altivec_reg_to_save (void)
{
  int i;


  if (! TARGET_ALTIVEC_ABI)
    return LAST_ALTIVEC_REGNO + 1;




  if (DEFAULT_ABI == ABI_DARWIN && current_function_calls_eh_return
      && ! TARGET_ALTIVEC)
    return FIRST_ALTIVEC_REGNO + 20;


  for (i = FIRST_ALTIVEC_REGNO + 20; i <= LAST_ALTIVEC_REGNO; ++i)
    if (regs_ever_live[i])
      break;

  return i;
}
