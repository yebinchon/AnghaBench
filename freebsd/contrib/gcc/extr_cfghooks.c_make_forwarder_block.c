
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


typedef int edge_iterator ;
typedef TYPE_2__* edge ;
typedef TYPE_1__* basic_block ;
struct TYPE_20__ {scalar_t__ count; TYPE_1__* dest; TYPE_1__* src; } ;
struct TYPE_19__ {scalar_t__ frequency; scalar_t__ count; int preds; } ;
struct TYPE_18__ {int (* make_forwarder_block ) (TYPE_2__*) ;int name; } ;


 int CDI_DOMINATORS ;
 scalar_t__ EDGE_FREQUENCY (TYPE_2__*) ;
 TYPE_16__* cfg_hooks ;
 scalar_t__ dom_info_available_p (int ) ;
 int ei_next (int *) ;
 TYPE_2__* ei_safe_edge (int ) ;
 int ei_start (int ) ;
 int internal_error (char*,int ) ;
 int iterate_fix_dominators (int ,TYPE_1__**,int) ;
 TYPE_1__* redirect_edge_and_branch_force (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* split_block_after_labels (TYPE_1__*) ;
 int stub1 (TYPE_2__*) ;

edge
make_forwarder_block (basic_block bb, bool (*redirect_edge_p) (edge),
        void (*new_bb_cbk) (basic_block))
{
  edge e, fallthru;
  edge_iterator ei;
  basic_block dummy, jump;

  if (!cfg_hooks->make_forwarder_block)
    internal_error ("%s does not support make_forwarder_block",
      cfg_hooks->name);

  fallthru = split_block_after_labels (bb);
  dummy = fallthru->src;
  bb = fallthru->dest;


  for (ei = ei_start (dummy->preds); (e = ei_safe_edge (ei)); )
    {
      if (redirect_edge_p (e))
 {
   ei_next (&ei);
   continue;
 }

      dummy->frequency -= EDGE_FREQUENCY (e);
      dummy->count -= e->count;
      if (dummy->frequency < 0)
 dummy->frequency = 0;
      if (dummy->count < 0)
 dummy->count = 0;
      fallthru->count -= e->count;
      if (fallthru->count < 0)
 fallthru->count = 0;

      jump = redirect_edge_and_branch_force (e, bb);
      if (jump)
 new_bb_cbk (jump);
    }

  if (dom_info_available_p (CDI_DOMINATORS))
    {
      basic_block doms_to_fix[2];

      doms_to_fix[0] = dummy;
      doms_to_fix[1] = bb;
      iterate_fix_dominators (CDI_DOMINATORS, doms_to_fix, 2);
    }

  cfg_hooks->make_forwarder_block (fallthru);

  return fallthru;
}
