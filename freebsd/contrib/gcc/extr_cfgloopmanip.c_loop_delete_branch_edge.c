
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int succs; } ;
struct TYPE_12__ {int flags; TYPE_2__* dest; TYPE_2__* src; } ;


 int BB_END (TYPE_2__*) ;
 int EDGE_COUNT (int ) ;
 int EDGE_IRREDUCIBLE_LOOP ;
 TYPE_1__* EDGE_SUCC (TYPE_2__*,int) ;
 TYPE_2__* EXIT_BLOCK_PTR ;
 int any_condjump_p (int ) ;
 int gcc_assert (int) ;
 int redirect_edge_and_branch (TYPE_1__*,TYPE_2__*) ;
 TYPE_3__* single_succ_edge (TYPE_2__*) ;

__attribute__((used)) static bool
loop_delete_branch_edge (edge e, int really_delete)
{
  basic_block src = e->src;
  basic_block newdest;
  int irr;
  edge snd;

  gcc_assert (EDGE_COUNT (src->succs) > 1);


  if (EDGE_COUNT (src->succs) > 2)
    return 0;

  if (!any_condjump_p (BB_END (src)))
    return 0;

  snd = e == EDGE_SUCC (src, 0) ? EDGE_SUCC (src, 1) : EDGE_SUCC (src, 0);
  newdest = snd->dest;
  if (newdest == EXIT_BLOCK_PTR)
    return 0;


  if (!really_delete)
    return 1;


  irr = snd->flags & EDGE_IRREDUCIBLE_LOOP;

  if (!redirect_edge_and_branch (e, newdest))
    return 0;
  single_succ_edge (src)->flags &= ~EDGE_IRREDUCIBLE_LOOP;
  single_succ_edge (src)->flags |= irr;

  return 1;
}
