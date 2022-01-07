
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int BITS_PER_UNIT ;
 int INTEGER_TYPE ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int allocate_dynamic_stack_space (int ,int ,int ) ;
 int convert_memory_address (int ,int ) ;
 int expand_normal (int ) ;
 scalar_t__ flag_mudflap ;
 int ptr_mode ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static rtx
expand_builtin_alloca (tree arglist, rtx target)
{
  rtx op0;
  rtx result;




  if (flag_mudflap)
    return 0;

  if (!validate_arglist (arglist, INTEGER_TYPE, VOID_TYPE))
    return 0;


  op0 = expand_normal (TREE_VALUE (arglist));


  result = allocate_dynamic_stack_space (op0, target, BITS_PER_UNIT);
  result = convert_memory_address (ptr_mode, result);

  return result;
}
