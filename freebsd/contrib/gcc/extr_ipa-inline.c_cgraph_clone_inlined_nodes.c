
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cgraph_node {int dummy; } ;
struct cgraph_edge {int inline_failed; struct cgraph_edge* next_callee; TYPE_5__* callee; TYPE_4__* caller; int loop_nest; int count; } ;
struct TYPE_8__ {TYPE_4__* inlined_to; scalar_t__ insns; } ;
struct TYPE_10__ {struct cgraph_edge* callees; TYPE_3__ global; int decl; int needed; TYPE_1__* callers; } ;
struct TYPE_7__ {TYPE_4__* inlined_to; } ;
struct TYPE_9__ {TYPE_2__ global; } ;
struct TYPE_6__ {int next_caller; } ;


 scalar_t__ DECL_SAVED_TREE (int ) ;
 struct cgraph_node* cgraph_clone_node (TYPE_5__*,int ,int ,int) ;
 int cgraph_redirect_edge_callee (struct cgraph_edge*,struct cgraph_node*) ;
 scalar_t__ flag_unit_at_a_time ;
 int gcc_assert (int) ;
 int nfunctions_inlined ;
 int overall_insns ;

void
cgraph_clone_inlined_nodes (struct cgraph_edge *e, bool duplicate, bool update_original)
{
  if (duplicate)
    {


      if (!e->callee->callers->next_caller
   && !e->callee->needed
   && flag_unit_at_a_time)
 {
   gcc_assert (!e->callee->global.inlined_to);
   if (DECL_SAVED_TREE (e->callee->decl))
     overall_insns -= e->callee->global.insns, nfunctions_inlined++;
   duplicate = 0;
 }
      else
 {
   struct cgraph_node *n;
   n = cgraph_clone_node (e->callee, e->count, e->loop_nest,
     update_original);
   cgraph_redirect_edge_callee (e, n);
 }
    }

  if (e->caller->global.inlined_to)
    e->callee->global.inlined_to = e->caller->global.inlined_to;
  else
    e->callee->global.inlined_to = e->caller;


  for (e = e->callee->callees; e; e = e->next_callee)
    if (!e->inline_failed)
      cgraph_clone_inlined_nodes (e, duplicate, update_original);
}
