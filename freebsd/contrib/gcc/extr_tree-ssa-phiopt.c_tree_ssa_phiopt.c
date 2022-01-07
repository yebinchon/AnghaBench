
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


typedef int * tree ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_30__ {int succs; } ;
struct TYPE_29__ {int flags; int dest_idx; TYPE_2__* dest; } ;


 scalar_t__ COND_EXPR ;
 int EDGE_ABNORMAL ;
 scalar_t__ EDGE_COUNT (int ) ;
 int EDGE_FALLTHRU ;
 TYPE_1__* EDGE_SUCC (TYPE_2__*,int) ;
 unsigned int NUM_FIXED_BLOCKS ;
 int * PHI_ARG_DEF_TREE (int *,int ) ;
 int * PHI_CHAIN (int *) ;
 unsigned int TODO_cleanup_cfg ;
 scalar_t__ TREE_CODE (int *) ;
 scalar_t__ abs_replacement (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int *,int *,int *) ;
 TYPE_2__** blocks_in_phiopt_order () ;
 scalar_t__ conditional_replacement (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int *,int *,int *) ;
 int free (TYPE_2__**) ;
 int gcc_assert (int) ;
 int * last_stmt (TYPE_2__*) ;
 scalar_t__ minmax_replacement (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int *,int *,int *) ;
 unsigned int n_basic_blocks ;
 int * phi_nodes (TYPE_2__*) ;
 TYPE_2__* single_pred (TYPE_2__*) ;
 int single_pred_p (TYPE_2__*) ;
 int single_succ_p (TYPE_2__*) ;
 scalar_t__ value_replacement (TYPE_2__*,TYPE_2__*,TYPE_1__*,TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static unsigned int
tree_ssa_phiopt (void)
{
  basic_block bb;
  basic_block *bb_order;
  unsigned n, i;
  bool cfgchanged = 0;
  bb_order = blocks_in_phiopt_order ();
  n = n_basic_blocks - NUM_FIXED_BLOCKS;

  for (i = 0; i < n; i++)
    {
      tree cond_expr;
      tree phi;
      basic_block bb1, bb2;
      edge e1, e2;
      tree arg0, arg1;

      bb = bb_order[i];

      cond_expr = last_stmt (bb);

      if (!cond_expr
          || TREE_CODE (cond_expr) != COND_EXPR)
        continue;

      e1 = EDGE_SUCC (bb, 0);
      bb1 = e1->dest;
      e2 = EDGE_SUCC (bb, 1);
      bb2 = e2->dest;


      if ((e1->flags & EDGE_ABNORMAL) != 0
          || (e2->flags & EDGE_ABNORMAL) != 0)
       continue;


      if (EDGE_COUNT (bb1->succs) == 0
          || bb2 == ((void*)0)
   || EDGE_COUNT (bb2->succs) == 0)
        continue;


      if (EDGE_SUCC (bb1, 0)->dest == bb2)
        ;
      else if (EDGE_SUCC (bb2, 0)->dest == bb1)
        {
   basic_block bb_tmp = bb1;
   edge e_tmp = e1;
   bb1 = bb2;
   bb2 = bb_tmp;
   e1 = e2;
   e2 = e_tmp;
 }
      else
        continue;

      e1 = EDGE_SUCC (bb1, 0);


      if (!single_succ_p (bb1)
   || (e1->flags & EDGE_FALLTHRU) == 0)
        continue;



      if (!single_pred_p (bb1)
          || single_pred (bb1) != bb)
 continue;

      phi = phi_nodes (bb2);




      if (!phi || PHI_CHAIN (phi) != ((void*)0))
 continue;

      arg0 = PHI_ARG_DEF_TREE (phi, e1->dest_idx);
      arg1 = PHI_ARG_DEF_TREE (phi, e2->dest_idx);



      gcc_assert (arg0 != ((void*)0) && arg1 != ((void*)0));


      if (conditional_replacement (bb, bb1, e1, e2, phi, arg0, arg1))
 cfgchanged = 1;
      else if (value_replacement (bb, bb1, e1, e2, phi, arg0, arg1))
 cfgchanged = 1;
      else if (abs_replacement (bb, bb1, e1, e2, phi, arg0, arg1))
 cfgchanged = 1;
      else if (minmax_replacement (bb, bb1, e1, e2, phi, arg0, arg1))
 cfgchanged = 1;
    }

  free (bb_order);


  return cfgchanged ? TODO_cleanup_cfg : 0;
}
