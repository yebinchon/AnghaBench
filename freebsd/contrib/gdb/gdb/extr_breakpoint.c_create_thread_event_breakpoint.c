
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct breakpoint {TYPE_1__* loc; int addr_string; int enable_state; } ;
struct TYPE_2__ {int address; } ;
typedef int CORE_ADDR ;


 int bp_enabled ;
 int bp_thread_event ;
 struct breakpoint* create_internal_breakpoint (int ,int ) ;
 int paddr (int ) ;
 int xasprintf (int *,char*,int ) ;

struct breakpoint *
create_thread_event_breakpoint (CORE_ADDR address)
{
  struct breakpoint *b;

  b = create_internal_breakpoint (address, bp_thread_event);

  b->enable_state = bp_enabled;

  xasprintf (&b->addr_string, "*0x%s", paddr (b->loc->address));

  return b;
}
