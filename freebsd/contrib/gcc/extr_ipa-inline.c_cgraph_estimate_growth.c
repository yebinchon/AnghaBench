
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int estimated_growth; scalar_t__ insns; } ;
struct cgraph_node {TYPE_2__ global; int decl; int needed; struct cgraph_edge* callers; } ;
struct cgraph_edge {TYPE_3__* caller; scalar_t__ inline_failed; struct cgraph_edge* next_caller; } ;
struct TYPE_4__ {scalar_t__ insns; } ;
struct TYPE_6__ {TYPE_1__ global; } ;


 int DECL_EXTERNAL (int ) ;
 int INT_MIN ;
 scalar_t__ cgraph_estimate_size_after_inlining (int,TYPE_3__*,struct cgraph_node*) ;

__attribute__((used)) static int
cgraph_estimate_growth (struct cgraph_node *node)
{
  int growth = 0;
  struct cgraph_edge *e;
  if (node->global.estimated_growth != INT_MIN)
    return node->global.estimated_growth;

  for (e = node->callers; e; e = e->next_caller)
    if (e->inline_failed)
      growth += (cgraph_estimate_size_after_inlining (1, e->caller, node)
   - e->caller->global.insns);




  if (!node->needed && !DECL_EXTERNAL (node->decl))
    growth -= node->global.insns;

  node->global.estimated_growth = growth;
  return growth;
}
