
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
typedef int edge_iterator ;
typedef TYPE_1__* edge ;
struct TYPE_6__ {int succs; } ;
struct TYPE_5__ {int flags; } ;


 int EDGE_FALLTHRU ;
 TYPE_4__* ENTRY_BLOCK_PTR ;
 int commit_edge_insertions () ;
 TYPE_1__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int gcc_assert (int) ;
 int insert_insn_on_edge (int ,TYPE_1__*) ;

void
emit_insn_at_entry (rtx insn)
{
  edge_iterator ei = ei_start (ENTRY_BLOCK_PTR->succs);
  edge e = ei_safe_edge (ei);
  gcc_assert (e->flags & EDGE_FALLTHRU);

  insert_insn_on_edge (insn, e);
  commit_edge_insertions ();
}
