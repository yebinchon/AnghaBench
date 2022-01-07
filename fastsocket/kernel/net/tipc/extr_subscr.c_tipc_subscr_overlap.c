
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ lower; scalar_t__ upper; } ;
struct subscription {TYPE_1__ seq; } ;



int tipc_subscr_overlap(struct subscription *sub,
   u32 found_lower,
   u32 found_upper)

{
 if (found_lower < sub->seq.lower)
  found_lower = sub->seq.lower;
 if (found_upper > sub->seq.upper)
  found_upper = sub->seq.upper;
 if (found_lower > found_upper)
  return 0;
 return 1;
}
