
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cost_pair {scalar_t__ cost; TYPE_1__* cand; } ;
struct TYPE_2__ {scalar_t__ cost; } ;



__attribute__((used)) static bool
cheaper_cost_pair (struct cost_pair *a, struct cost_pair *b)
{
  if (!a)
    return 0;

  if (!b)
    return 1;

  if (a->cost < b->cost)
    return 1;

  if (a->cost > b->cost)
    return 0;


  if (a->cand->cost < b->cand->cost)
    return 1;

  return 0;
}
