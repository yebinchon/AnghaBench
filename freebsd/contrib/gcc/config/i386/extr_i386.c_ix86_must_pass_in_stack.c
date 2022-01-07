
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int TARGET_64BIT ;
 int TImode ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 scalar_t__ must_pass_in_stack_var_size_or_pad (int,scalar_t__) ;

__attribute__((used)) static bool
ix86_must_pass_in_stack (enum machine_mode mode, tree type)
{
  if (must_pass_in_stack_var_size_or_pad (mode, type))
    return 1;




  return (!TARGET_64BIT && mode == TImode
   && type && TREE_CODE (type) != VECTOR_TYPE);
}
