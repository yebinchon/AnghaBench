
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int use_operand_p ;
typedef int tree ;
typedef int ssa_op_iter ;


 int NULL_USE_OPERAND_P ;
 scalar_t__ op_iter_done (int *) ;
 int op_iter_init_use (int *,int ,int) ;
 int op_iter_next_use (int *) ;

__attribute__((used)) static inline use_operand_p
single_ssa_use_operand (tree stmt, int flags)
{
  use_operand_p var;
  ssa_op_iter iter;

  var = op_iter_init_use (&iter, stmt, flags);
  if (op_iter_done (&iter))
    return NULL_USE_OPERAND_P;
  op_iter_next_use (&iter);
  if (op_iter_done (&iter))
    return var;
  return NULL_USE_OPERAND_P;
}
