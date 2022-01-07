
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cgraph_edge {int callee; TYPE_2__* caller; int loop_nest; scalar_t__ count; } ;
struct TYPE_4__ {scalar_t__ insns; } ;
struct TYPE_5__ {TYPE_1__ global; } ;


 int INT_MIN ;
 int MIN (int ,int) ;
 int cgraph_estimate_growth (int ) ;
 int cgraph_estimate_size_after_inlining (int,TYPE_2__*,int ) ;
 scalar_t__ cgraph_recursive_inlining_p (TYPE_2__*,int ,int *) ;
 int max_count ;

__attribute__((used)) static int
cgraph_edge_badness (struct cgraph_edge *edge)
{
  if (max_count)
    {
      int growth =
 cgraph_estimate_size_after_inlining (1, edge->caller, edge->callee);
      growth -= edge->caller->global.insns;


      if (growth <= 0)
 return INT_MIN - growth;
      return ((int)((double)edge->count * INT_MIN / max_count)) / growth;
    }
  else
  {
    int nest = MIN (edge->loop_nest, 8);
    int badness = cgraph_estimate_growth (edge->callee) * 256;


    if (badness > 0)
      badness >>= nest;
    else
      badness <<= nest;


    if (cgraph_recursive_inlining_p (edge->caller, edge->callee, ((void*)0)))
      return badness + 1;
    else
      return badness;
  }
}
