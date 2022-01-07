
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * rtx ;
typedef int rtvec ;
typedef int edge_iterator ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_8__ {int succs; } ;
struct TYPE_7__ {int flags; int dest; } ;


 scalar_t__ ADDR_VEC ;
 int * BB_END (TYPE_2__*) ;
 int BLOCK_USED_BY_TABLEJUMP ;
 int EDGE_ABNORMAL ;
 int EDGE_EH ;
 size_t FULL_STATE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int GET_NUM_ELEM (int ) ;
 scalar_t__ IF_THEN_ELSE ;
 scalar_t__ LABEL_REF ;
 int PATTERN (int *) ;
 int RTVEC_ELT (int ,int) ;
 scalar_t__ SET_DEST (int *) ;
 int SET_SRC (int *) ;
 int SET_STATE (int ,size_t) ;
 int XEXP (int ,int) ;
 int XVEC (int ,int) ;
 int ei_next (int *) ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int mark_tablejump_edge (int ) ;
 scalar_t__ pc_rtx ;
 int remove_edge (TYPE_1__*) ;
 int * single_set (int *) ;

__attribute__((used)) static void
purge_dead_tablejump_edges (basic_block bb, rtx table)
{
  rtx insn = BB_END (bb), tmp;
  rtvec vec;
  int j;
  edge_iterator ei;
  edge e;

  if (GET_CODE (PATTERN (table)) == ADDR_VEC)
    vec = XVEC (PATTERN (table), 0);
  else
    vec = XVEC (PATTERN (table), 1);

  for (j = GET_NUM_ELEM (vec) - 1; j >= 0; --j)
    mark_tablejump_edge (XEXP (RTVEC_ELT (vec, j), 0));




  if ((tmp = single_set (insn)) != ((void*)0)
       && SET_DEST (tmp) == pc_rtx
       && GET_CODE (SET_SRC (tmp)) == IF_THEN_ELSE
       && GET_CODE (XEXP (SET_SRC (tmp), 2)) == LABEL_REF)
    mark_tablejump_edge (XEXP (XEXP (SET_SRC (tmp), 2), 0));

  for (ei = ei_start (bb->succs); (e = ei_safe_edge (ei)); )
    {
      if (FULL_STATE (e->dest) & BLOCK_USED_BY_TABLEJUMP)
 SET_STATE (e->dest, FULL_STATE (e->dest)
       & ~(size_t) BLOCK_USED_BY_TABLEJUMP);
      else if (!(e->flags & (EDGE_ABNORMAL | EDGE_EH)))
 {
   remove_edge (e);
   continue;
 }
      ei_next (&ei);
    }
}
