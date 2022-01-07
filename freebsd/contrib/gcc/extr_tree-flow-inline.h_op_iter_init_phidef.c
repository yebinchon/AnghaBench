
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int done; int iter_type; } ;
typedef TYPE_1__ ssa_op_iter ;
typedef int def_operand_p ;


 int NULL_USE_OPERAND_P ;
 int PHI_RESULT (int ) ;
 int PHI_RESULT_PTR (int ) ;
 int SSA_OP_DEF ;
 int SSA_OP_VIRTUAL_DEFS ;
 int clear_and_done_ssa_iter (TYPE_1__*) ;
 int gcc_assert (int) ;
 scalar_t__ is_gimple_reg (int ) ;
 int ssa_op_iter_def ;

__attribute__((used)) static inline def_operand_p
op_iter_init_phidef (ssa_op_iter *ptr, tree phi, int flags)
{
  tree phi_def = PHI_RESULT (phi);
  int comp;

  clear_and_done_ssa_iter (ptr);
  ptr->done = 0;

  gcc_assert ((flags & (SSA_OP_DEF | SSA_OP_VIRTUAL_DEFS)) != 0);

  comp = (is_gimple_reg (phi_def) ? SSA_OP_DEF : SSA_OP_VIRTUAL_DEFS);


  if ((flags & comp) == 0)
    {
      ptr->done = 1;
      return NULL_USE_OPERAND_P;
    }

  ptr->iter_type = ssa_op_iter_def;



  return PHI_RESULT_PTR (phi);
}
