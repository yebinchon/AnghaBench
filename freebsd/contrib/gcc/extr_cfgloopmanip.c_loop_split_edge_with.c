
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct loop {int dummy; } ;
typedef scalar_t__ rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_13__ {TYPE_2__* latch; } ;
struct TYPE_12__ {TYPE_7__* loop_father; int flags; } ;
struct TYPE_11__ {TYPE_2__* dest; TYPE_2__* src; } ;


 int BB_END (TYPE_2__*) ;
 int BB_SUPERBLOCK ;
 int add_bb_to_loop (TYPE_2__*,struct loop*) ;
 int emit_insn_after (scalar_t__,int ) ;
 struct loop* find_common_loop (TYPE_7__*,TYPE_7__*) ;
 TYPE_2__* split_edge (TYPE_1__*) ;

basic_block
loop_split_edge_with (edge e, rtx insns)
{
  basic_block src, dest, new_bb;
  struct loop *loop_c;

  src = e->src;
  dest = e->dest;

  loop_c = find_common_loop (src->loop_father, dest->loop_father);



  new_bb = split_edge (e);
  add_bb_to_loop (new_bb, loop_c);
  new_bb->flags |= (insns ? BB_SUPERBLOCK : 0);

  if (insns)
    emit_insn_after (insns, BB_END (new_bb));

  if (dest->loop_father->latch == src)
    dest->loop_father->latch = new_bb;

  return new_bb;
}
