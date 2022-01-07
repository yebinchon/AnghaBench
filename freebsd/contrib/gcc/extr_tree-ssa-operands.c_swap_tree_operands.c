
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* use_optype_p ;
typedef scalar_t__ tree ;
struct TYPE_6__ {scalar_t__* use; } ;
struct TYPE_5__ {struct TYPE_5__* next; } ;


 TYPE_1__* USE_OPS (scalar_t__) ;
 TYPE_2__* USE_OP_PTR (TYPE_1__*) ;
 scalar_t__ ssa_operands_active () ;

void
swap_tree_operands (tree stmt, tree *exp0, tree *exp1)
{
  tree op0, op1;
  op0 = *exp0;
  op1 = *exp1;




  if (ssa_operands_active () && op0 != op1)
    {
      use_optype_p use0, use1, ptr;
      use0 = use1 = ((void*)0);


      for (ptr = USE_OPS (stmt); ptr; ptr = ptr->next)
 if (USE_OP_PTR (ptr)->use == exp0)
   {
     use0 = ptr;
     break;
   }

      for (ptr = USE_OPS (stmt); ptr; ptr = ptr->next)
 if (USE_OP_PTR (ptr)->use == exp1)
   {
     use1 = ptr;
     break;
   }



      if (use0 && use1)
        {
   tree *tmp = USE_OP_PTR (use1)->use;
   USE_OP_PTR (use1)->use = USE_OP_PTR (use0)->use;
   USE_OP_PTR (use0)->use = tmp;
 }
    }


  *exp0 = op1;
  *exp1 = op0;
}
