
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int * edge ;
typedef TYPE_1__* basic_block ;
struct TYPE_13__ {int loop_depth; int frequency; int count; } ;
struct TYPE_12__ {TYPE_1__* (* split_block ) (TYPE_1__*,void*) ;int name; } ;


 int CDI_DOMINATORS ;
 int EDGE_FALLTHRU ;
 TYPE_11__* cfg_hooks ;
 scalar_t__ dom_info_available_p (int ) ;
 int internal_error (char*,int ) ;
 int * make_single_succ_edge (TYPE_1__*,TYPE_1__*,int ) ;
 int redirect_immediate_dominators (int ,TYPE_1__*,TYPE_1__*) ;
 int set_immediate_dominator (int ,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* stub1 (TYPE_1__*,void*) ;

edge
split_block (basic_block bb, void *i)
{
  basic_block new_bb;

  if (!cfg_hooks->split_block)
    internal_error ("%s does not support split_block", cfg_hooks->name);

  new_bb = cfg_hooks->split_block (bb, i);
  if (!new_bb)
    return ((void*)0);

  new_bb->count = bb->count;
  new_bb->frequency = bb->frequency;
  new_bb->loop_depth = bb->loop_depth;

  if (dom_info_available_p (CDI_DOMINATORS))
    {
      redirect_immediate_dominators (CDI_DOMINATORS, bb, new_bb);
      set_immediate_dominator (CDI_DOMINATORS, new_bb, bb);
    }

  return make_single_succ_edge (bb, new_bb, EDGE_FALLTHRU);
}
