
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_17__ {int flags; } ;
struct TYPE_16__ {TYPE_1__* loop_father; } ;
struct TYPE_15__ {TYPE_2__* latch; } ;


 int DECL_ARTIFICIAL (int ) ;
 scalar_t__ DECL_NONLOCAL (int ) ;
 int EDGE_ABNORMAL ;
 TYPE_2__* EXIT_BLOCK_PTR ;
 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (scalar_t__) ;
 int PHI_ARG_DEF (scalar_t__,int ) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (TYPE_2__*) ;
 scalar_t__ bsi_stmt (int ) ;
 scalar_t__ current_loops ;
 int is_gimple_reg (int ) ;
 scalar_t__ last_stmt (TYPE_2__*) ;
 int may_propagate_copy (int ,int ) ;
 scalar_t__ need_ssa_update_p () ;
 scalar_t__ phi_nodes (TYPE_2__*) ;
 int single_pred_p (TYPE_2__*) ;
 TYPE_2__* single_succ (TYPE_2__*) ;
 TYPE_6__* single_succ_edge (TYPE_2__*) ;
 int single_succ_p (TYPE_2__*) ;
 scalar_t__ stmt_ends_bb_p (scalar_t__) ;

__attribute__((used)) static bool
tree_can_merge_blocks_p (basic_block a, basic_block b)
{
  tree stmt;
  block_stmt_iterator bsi;
  tree phi;

  if (!single_succ_p (a))
    return 0;

  if (single_succ_edge (a)->flags & EDGE_ABNORMAL)
    return 0;

  if (single_succ (a) != b)
    return 0;

  if (!single_pred_p (b))
    return 0;

  if (b == EXIT_BLOCK_PTR)
    return 0;



  stmt = last_stmt (a);
  if (stmt && stmt_ends_bb_p (stmt))
    return 0;


  if (stmt && TREE_CODE (stmt) == LABEL_EXPR
      && DECL_NONLOCAL (LABEL_EXPR_LABEL (stmt)))
    return 0;



  phi = phi_nodes (b);
  if (phi)
    {
      if (need_ssa_update_p ())
 return 0;

      for (; phi; phi = PHI_CHAIN (phi))
 if (!is_gimple_reg (PHI_RESULT (phi))
     && !may_propagate_copy (PHI_RESULT (phi), PHI_ARG_DEF (phi, 0)))
   return 0;
    }


  for (bsi = bsi_start (b); !bsi_end_p (bsi); bsi_next (&bsi))
    {
      stmt = bsi_stmt (bsi);
      if (TREE_CODE (stmt) != LABEL_EXPR)
 break;
      if (!DECL_ARTIFICIAL (LABEL_EXPR_LABEL (stmt)))
 return 0;
    }


  if (current_loops
      && b->loop_father->latch == b)
    return 0;

  return 1;
}
