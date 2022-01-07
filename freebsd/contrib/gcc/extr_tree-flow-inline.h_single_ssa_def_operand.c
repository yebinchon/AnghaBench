
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int ssa_op_iter ;
typedef int def_operand_p ;


 int NULL_DEF_OPERAND_P ;
 scalar_t__ op_iter_done (int *) ;
 int op_iter_init_def (int *,int ,int) ;
 int op_iter_next_def (int *) ;

__attribute__((used)) static inline def_operand_p
single_ssa_def_operand (tree stmt, int flags)
{
  def_operand_p var;
  ssa_op_iter iter;

  var = op_iter_init_def (&iter, stmt, flags);
  if (op_iter_done (&iter))
    return NULL_DEF_OPERAND_P;
  op_iter_next_def (&iter);
  if (op_iter_done (&iter))
    return var;
  return NULL_DEF_OPERAND_P;
}
