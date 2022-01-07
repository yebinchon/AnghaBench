
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct loops {int dummy; } ;
struct loop {int * inner; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int succs; } ;


 int EDGE_COUNT (int ) ;
 int flow_bb_inside_loop_p (struct loop*,TYPE_1__*) ;
 int gcc_assert (int) ;
 struct loop* loop_version (struct loops*,struct loop*,int ,TYPE_1__**,int) ;
 int unshare_expr (int ) ;

__attribute__((used)) static struct loop *
tree_unswitch_loop (struct loops *loops, struct loop *loop,
      basic_block unswitch_on, tree cond)
{
  basic_block condition_bb;


  gcc_assert (flow_bb_inside_loop_p (loop, unswitch_on));
  gcc_assert (EDGE_COUNT (unswitch_on->succs) == 2);
  gcc_assert (loop->inner == ((void*)0));

  return loop_version (loops, loop, unshare_expr (cond),
         &condition_bb, 0);
}
