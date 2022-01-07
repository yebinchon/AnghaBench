
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_13__ {int succs; } ;
struct TYPE_12__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;


 scalar_t__ COND_EXPR ;
 int EDGE_COUNT (int ) ;
 int EDGE_FALLTHRU ;
 TYPE_1__* EDGE_SUCC (TYPE_2__*,int) ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ bsi_end_p (int ) ;
 int bsi_last (TYPE_2__*) ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;
 TYPE_1__* ssa_redirect_edge (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static edge
tree_try_redirect_by_replacing_jump (edge e, basic_block target)
{
  basic_block src = e->src;
  block_stmt_iterator b;
  tree stmt;



  if (EDGE_COUNT (src->succs) != 2


      || EDGE_SUCC (src, EDGE_SUCC (src, 0) == e)->dest != target)
    return ((void*)0);

  b = bsi_last (src);
  if (bsi_end_p (b))
    return ((void*)0);
  stmt = bsi_stmt (b);

  if (TREE_CODE (stmt) == COND_EXPR
      || TREE_CODE (stmt) == SWITCH_EXPR)
    {
      bsi_remove (&b, 1);
      e = ssa_redirect_edge (e, target);
      e->flags = EDGE_FALLTHRU;
      return e;
    }

  return ((void*)0);
}
