
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int branches_taken; int branches_executed; int branches; int calls_executed; int calls; } ;
typedef TYPE_2__ coverage_t ;
struct TYPE_8__ {scalar_t__ count; TYPE_1__* src; int is_unconditional; scalar_t__ is_call_non_return; } ;
typedef TYPE_3__ arc_t ;
struct TYPE_6__ {scalar_t__ count; } ;



__attribute__((used)) static void
add_branch_counts (coverage_t *coverage, const arc_t *arc)
{
  if (arc->is_call_non_return)
    {
      coverage->calls++;
      if (arc->src->count)
 coverage->calls_executed++;
    }
  else if (!arc->is_unconditional)
    {
      coverage->branches++;
      if (arc->src->count)
 coverage->branches_executed++;
      if (arc->count)
 coverage->branches_taken++;
    }
}
