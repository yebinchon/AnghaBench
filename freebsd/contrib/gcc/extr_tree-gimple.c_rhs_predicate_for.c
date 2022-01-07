
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int gimple_predicate ;


 int is_gimple_formal_tmp_rhs ;
 scalar_t__ is_gimple_formal_tmp_var (int ) ;
 int is_gimple_mem_rhs ;
 scalar_t__ is_gimple_reg (int ) ;
 int is_gimple_reg_rhs ;

gimple_predicate
rhs_predicate_for (tree lhs)
{
  if (is_gimple_formal_tmp_var (lhs))
    return is_gimple_formal_tmp_rhs;
  else if (is_gimple_reg (lhs))
    return is_gimple_reg_rhs;
  else
    return is_gimple_mem_rhs;
}
