
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int use_operand_p ;
typedef int tree ;
struct TYPE_5__ {int iter_type; } ;
typedef TYPE_1__ ssa_op_iter ;


 int SSA_OP_ALL_DEFS ;
 int gcc_assert (int) ;
 int op_iter_init (TYPE_1__*,int ,int) ;
 int op_iter_next_use (TYPE_1__*) ;
 int ssa_op_iter_use ;

__attribute__((used)) static inline use_operand_p
op_iter_init_use (ssa_op_iter *ptr, tree stmt, int flags)
{
  gcc_assert ((flags & SSA_OP_ALL_DEFS) == 0);
  op_iter_init (ptr, stmt, flags);
  ptr->iter_type = ssa_op_iter_use;
  return op_iter_next_use (ptr);
}
