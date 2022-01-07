
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ actual_fsize ;
 int sparc_leaf_function_p ;
 scalar_t__ sparc_prologue_data_valid_p ;

bool
sparc_can_use_return_insn_p (void)
{
  return sparc_prologue_data_valid_p
  && (actual_fsize == 0 || !sparc_leaf_function_p);
}
