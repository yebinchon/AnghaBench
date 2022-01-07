
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tree ;
typedef int edge_iterator ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_12__ {int succs; } ;
struct TYPE_11__ {scalar_t__ probability; int flags; scalar_t__ count; } ;


 int CDI_DOMINATORS ;

 int COND_EXPR_COND (int ) ;
 int EDGE_FALLTHRU ;
 int INTEGER_CST ;
 scalar_t__ REG_BR_PROB_BASE ;
 int SWITCH_COND (int ) ;

 int TREE_CODE (int ) ;
 int WARN_STRICT_OVERFLOW_CONDITIONAL ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;
 int ei_next (int *) ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 TYPE_1__* find_taken_edge (TYPE_2__*,int ) ;
 int fold (int ) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_and_ignore_overflow_warnings () ;
 int fold_undefer_overflow_warnings (int,int ,int ) ;
 int free_dominance_info (int ) ;
 int gcc_unreachable () ;
 int remove_edge (TYPE_1__*) ;
 TYPE_1__* single_succ_edge (TYPE_2__*) ;
 int single_succ_p (TYPE_2__*) ;

__attribute__((used)) static bool
cleanup_control_expr_graph (basic_block bb, block_stmt_iterator bsi)
{
  edge taken_edge;
  bool retval = 0;
  tree expr = bsi_stmt (bsi), val;

  if (!single_succ_p (bb))
    {
      edge e;
      edge_iterator ei;
      bool warned;

      fold_defer_overflow_warnings ();

      switch (TREE_CODE (expr))
 {
 case 129:
   val = fold (COND_EXPR_COND (expr));
   break;

 case 128:
   val = fold (SWITCH_COND (expr));
   if (TREE_CODE (val) != INTEGER_CST)
     {
       fold_undefer_and_ignore_overflow_warnings ();
       return 0;
     }
   break;

 default:
   gcc_unreachable ();
 }

      taken_edge = find_taken_edge (bb, val);
      if (!taken_edge)
 {
   fold_undefer_and_ignore_overflow_warnings ();
   return 0;
 }


      warned = 0;
      for (ei = ei_start (bb->succs); (e = ei_safe_edge (ei)); )
 {
   if (e != taken_edge)
     {
       if (!warned)
  {
    fold_undefer_overflow_warnings
      (1, expr, WARN_STRICT_OVERFLOW_CONDITIONAL);
    warned = 1;
  }

       taken_edge->probability += e->probability;
       taken_edge->count += e->count;
       remove_edge (e);
       retval = 1;
     }
   else
     ei_next (&ei);
 }
      if (!warned)
 fold_undefer_and_ignore_overflow_warnings ();
      if (taken_edge->probability > REG_BR_PROB_BASE)
 taken_edge->probability = REG_BR_PROB_BASE;
    }
  else
    taken_edge = single_succ_edge (bb);

  bsi_remove (&bsi, 1);
  taken_edge->flags = EDGE_FALLTHRU;


  free_dominance_info (CDI_DOMINATORS);

  return retval;
}
