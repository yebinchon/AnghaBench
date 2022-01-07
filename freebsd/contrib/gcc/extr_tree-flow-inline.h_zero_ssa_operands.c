
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int ssa_op_iter ;


 int op_iter_done (int *) ;
 int op_iter_init_tree (int *,int ,int) ;

__attribute__((used)) static inline bool
zero_ssa_operands (tree stmt, int flags)
{
  ssa_op_iter iter;

  op_iter_init_tree (&iter, stmt, flags);
  return op_iter_done (&iter);
}
