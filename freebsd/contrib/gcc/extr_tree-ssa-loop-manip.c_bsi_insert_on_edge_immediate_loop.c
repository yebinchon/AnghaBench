
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_12__ {TYPE_2__* latch; } ;
struct TYPE_11__ {TYPE_3__* loop_father; } ;
struct TYPE_10__ {TYPE_2__* dest; TYPE_2__* src; } ;


 int add_bb_to_loop (TYPE_2__*,struct loop*) ;
 TYPE_2__* bsi_insert_on_edge_immediate (TYPE_1__*,int ) ;
 struct loop* find_common_loop (TYPE_3__*,TYPE_3__*) ;

basic_block
bsi_insert_on_edge_immediate_loop (edge e, tree stmt)
{
  basic_block src, dest, new_bb;
  struct loop *loop_c;

  src = e->src;
  dest = e->dest;

  loop_c = find_common_loop (src->loop_father, dest->loop_father);

  new_bb = bsi_insert_on_edge_immediate (e, stmt);

  if (!new_bb)
    return ((void*)0);

  add_bb_to_loop (new_bb, loop_c);
  if (dest->loop_father->latch == src)
    dest->loop_father->latch = new_bb;

  return new_bb;
}
