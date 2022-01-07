
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ TARGET_AAPCS_BASED ;
 int must_pass_in_stack_var_size (int,int ) ;
 int must_pass_in_stack_var_size_or_pad (int,int ) ;

__attribute__((used)) static bool
arm_must_pass_in_stack (enum machine_mode mode, tree type)
{
  if (TARGET_AAPCS_BASED)
    return must_pass_in_stack_var_size (mode, type);
  else
    return must_pass_in_stack_var_size_or_pad (mode, type);
}
