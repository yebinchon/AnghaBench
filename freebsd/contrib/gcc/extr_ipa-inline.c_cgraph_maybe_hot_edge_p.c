
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cgraph_edge {int count; } ;
struct TYPE_2__ {int sum_max; } ;


 int HOT_BB_COUNT_FRACTION ;
 int PARAM_VALUE (int ) ;
 scalar_t__ flag_branch_probabilities ;
 TYPE_1__* profile_info ;

__attribute__((used)) static bool
cgraph_maybe_hot_edge_p (struct cgraph_edge *edge)
{
  if (profile_info && flag_branch_probabilities
      && (edge->count
   <= profile_info->sum_max / PARAM_VALUE (HOT_BB_COUNT_FRACTION)))
    return 0;
  return 1;
}
