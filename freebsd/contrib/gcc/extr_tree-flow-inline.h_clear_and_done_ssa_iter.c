
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int done; int phi_stmt; scalar_t__ num_phi; scalar_t__ phi_i; int iter_type; int * mustkills; int * mustdefs; int * mayuses; int * maydefs; int * vuses; int * uses; int * defs; } ;
typedef TYPE_1__ ssa_op_iter ;


 int NULL_TREE ;
 int ssa_op_iter_none ;

__attribute__((used)) static inline void
clear_and_done_ssa_iter (ssa_op_iter *ptr)
{
  ptr->defs = ((void*)0);
  ptr->uses = ((void*)0);
  ptr->vuses = ((void*)0);
  ptr->maydefs = ((void*)0);
  ptr->mayuses = ((void*)0);
  ptr->mustdefs = ((void*)0);
  ptr->mustkills = ((void*)0);
  ptr->iter_type = ssa_op_iter_none;
  ptr->phi_i = 0;
  ptr->num_phi = 0;
  ptr->phi_stmt = NULL_TREE;
  ptr->done = 1;
}
