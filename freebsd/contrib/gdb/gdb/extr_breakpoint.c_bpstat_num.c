
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct breakpoint {int number; } ;
typedef TYPE_1__* bpstat ;
struct TYPE_3__ {struct TYPE_3__* next; struct breakpoint* breakpoint_at; } ;



int
bpstat_num (bpstat *bsp)
{
  struct breakpoint *b;

  if ((*bsp) == ((void*)0))
    return 0;
  else
    {
      b = (*bsp)->breakpoint_at;
      *bsp = (*bsp)->next;
      if (b == ((void*)0))
 return -1;
      else
 return b->number;
    }
}
