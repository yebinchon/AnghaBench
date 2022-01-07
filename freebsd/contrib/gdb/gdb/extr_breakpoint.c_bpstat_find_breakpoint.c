
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct breakpoint {int dummy; } ;
typedef TYPE_1__* bpstat ;
struct TYPE_4__ {struct breakpoint* breakpoint_at; struct TYPE_4__* next; } ;



bpstat
bpstat_find_breakpoint (bpstat bsp, struct breakpoint *breakpoint)
{
  if (bsp == ((void*)0))
    return ((void*)0);

  for (; bsp != ((void*)0); bsp = bsp->next)
    {
      if (bsp->breakpoint_at == breakpoint)
 return bsp;
    }
  return ((void*)0);
}
