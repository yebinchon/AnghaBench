
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int done; int phi_stmt; scalar_t__ num_phi; scalar_t__ phi_i; int * mustkills; int * mustdefs; int * mayuses; int * maydefs; int * vuses; int * uses; int * defs; } ;
typedef TYPE_1__ ssa_op_iter ;


 int * DEF_OPS (int ) ;
 int * MAYDEF_OPS (int ) ;
 int * MUSTDEF_OPS (int ) ;
 int NULL_TREE ;
 int SSA_OP_DEF ;
 int SSA_OP_USE ;
 int SSA_OP_VMAYDEF ;
 int SSA_OP_VMAYUSE ;
 int SSA_OP_VMUSTDEF ;
 int SSA_OP_VMUSTKILL ;
 int SSA_OP_VUSE ;
 int * USE_OPS (int ) ;
 int * VUSE_OPS (int ) ;
 int gcc_assert (int ) ;
 int stmt_ann (int ) ;

__attribute__((used)) static inline void
op_iter_init (ssa_op_iter *ptr, tree stmt, int flags)
{




  ptr->defs = (flags & SSA_OP_DEF) ? DEF_OPS (stmt) : ((void*)0);
  ptr->uses = (flags & SSA_OP_USE) ? USE_OPS (stmt) : ((void*)0);
  ptr->vuses = (flags & SSA_OP_VUSE) ? VUSE_OPS (stmt) : ((void*)0);
  ptr->maydefs = (flags & SSA_OP_VMAYDEF) ? MAYDEF_OPS (stmt) : ((void*)0);
  ptr->mayuses = (flags & SSA_OP_VMAYUSE) ? MAYDEF_OPS (stmt) : ((void*)0);
  ptr->mustdefs = (flags & SSA_OP_VMUSTDEF) ? MUSTDEF_OPS (stmt) : ((void*)0);
  ptr->mustkills = (flags & SSA_OP_VMUSTKILL) ? MUSTDEF_OPS (stmt) : ((void*)0);
  ptr->done = 0;

  ptr->phi_i = 0;
  ptr->num_phi = 0;
  ptr->phi_stmt = NULL_TREE;
}
