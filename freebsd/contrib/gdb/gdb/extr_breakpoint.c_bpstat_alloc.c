
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct breakpoint {int dummy; } ;
typedef TYPE_1__* bpstat ;
struct TYPE_4__ {int print_it; int * old_val; int * commands; struct breakpoint* breakpoint_at; struct TYPE_4__* next; } ;


 int print_it_normal ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static bpstat
bpstat_alloc (struct breakpoint *b, bpstat cbs )
{
  bpstat bs;

  bs = (bpstat) xmalloc (sizeof (*bs));
  cbs->next = bs;
  bs->breakpoint_at = b;

  bs->commands = ((void*)0);
  bs->old_val = ((void*)0);
  bs->print_it = print_it_normal;
  return bs;
}
