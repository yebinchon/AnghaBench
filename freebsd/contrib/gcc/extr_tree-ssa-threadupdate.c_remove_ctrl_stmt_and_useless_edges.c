
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int edge_iterator ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_9__ {int succs; } ;
struct TYPE_8__ {TYPE_2__* dest; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ GOTO_EXPR ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int bsi_end_p (int ) ;
 int bsi_last (TYPE_2__*) ;
 int bsi_remove (int *,int) ;
 scalar_t__ bsi_stmt (int ) ;
 int ei_next (int *) ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int remove_edge (TYPE_1__*) ;

__attribute__((used)) static void
remove_ctrl_stmt_and_useless_edges (basic_block bb, basic_block dest_bb)
{
  block_stmt_iterator bsi;
  edge e;
  edge_iterator ei;

  bsi = bsi_last (bb);






  if (!bsi_end_p (bsi)
      && bsi_stmt (bsi)
      && (TREE_CODE (bsi_stmt (bsi)) == COND_EXPR
   || TREE_CODE (bsi_stmt (bsi)) == GOTO_EXPR
   || TREE_CODE (bsi_stmt (bsi)) == SWITCH_EXPR))
    bsi_remove (&bsi, 1);

  for (ei = ei_start (bb->succs); (e = ei_safe_edge (ei)); )
    {
      if (e->dest != dest_bb)
 remove_edge (e);
      else
 ei_next (&ei);
    }
}
