
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int use_operand_p ;
typedef int tree ;
struct TYPE_5__ {int done; int iter_type; int num_phi; int phi_stmt; } ;
typedef TYPE_1__ ssa_op_iter ;


 int NULL_USE_OPERAND_P ;
 int PHI_NUM_ARGS (int ) ;
 int PHI_RESULT (int ) ;
 int SSA_OP_USE ;
 int SSA_OP_VIRTUAL_USES ;
 int clear_and_done_ssa_iter (TYPE_1__*) ;
 int gcc_assert (int) ;
 scalar_t__ is_gimple_reg (int ) ;
 int op_iter_next_use (TYPE_1__*) ;
 int ssa_op_iter_use ;

__attribute__((used)) static inline use_operand_p
op_iter_init_phiuse (ssa_op_iter *ptr, tree phi, int flags)
{
  tree phi_def = PHI_RESULT (phi);
  int comp;

  clear_and_done_ssa_iter (ptr);
  ptr->done = 0;

  gcc_assert ((flags & (SSA_OP_USE | SSA_OP_VIRTUAL_USES)) != 0);

  comp = (is_gimple_reg (phi_def) ? SSA_OP_USE : SSA_OP_VIRTUAL_USES);


  if ((flags & comp) == 0)
    {
      ptr->done = 1;
      return NULL_USE_OPERAND_P;
    }

  ptr->phi_stmt = phi;
  ptr->num_phi = PHI_NUM_ARGS (phi);
  ptr->iter_type = ssa_op_iter_use;
  return op_iter_next_use (ptr);
}
