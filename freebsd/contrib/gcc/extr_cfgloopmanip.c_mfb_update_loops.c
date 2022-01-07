
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop {int latch; } ;
typedef int basic_block ;
struct TYPE_2__ {struct loop* loop_father; } ;


 size_t CDI_DOMINATORS ;
 int add_bb_to_loop (int ,struct loop*) ;
 scalar_t__* dom_computed ;
 int set_immediate_dominator (size_t,int ,int ) ;
 int single_pred (int ) ;
 TYPE_1__* single_succ (int ) ;

__attribute__((used)) static void
mfb_update_loops (basic_block jump)
{
  struct loop *loop = single_succ (jump)->loop_father;

  if (dom_computed[CDI_DOMINATORS])
    set_immediate_dominator (CDI_DOMINATORS, jump, single_pred (jump));
  add_bb_to_loop (jump, loop);
  loop->latch = jump;
}
