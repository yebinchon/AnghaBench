
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int num_breakpoints; int * clr_break; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ADDR_BITS_REMOVE (scalar_t__) ;
 int MO_ADDR_BITS_REMOVE ;
 int MO_CLR_BREAK_1_BASED ;
 int MO_CLR_BREAK_USES_ADDR ;
 scalar_t__* breakaddr ;
 TYPE_1__* current_monitor ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_stderr ;
 int monitor_debug (char*,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (int *,int) ;
 int paddr (scalar_t__) ;
 int paddr_nz (scalar_t__) ;

__attribute__((used)) static int
monitor_remove_breakpoint (CORE_ADDR addr, char *shadow)
{
  int i;

  monitor_debug ("MON rmbkpt %s\n", paddr (addr));
  if (current_monitor->clr_break == ((void*)0))
    error ("No clr_break defined for this monitor");

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    addr = ADDR_BITS_REMOVE (addr);

  for (i = 0; i < current_monitor->num_breakpoints; i++)
    {
      if (breakaddr[i] == addr)
 {
   breakaddr[i] = 0;

   if (current_monitor->flags & MO_CLR_BREAK_USES_ADDR)
     monitor_printf (current_monitor->clr_break, addr);
   else if (current_monitor->flags & MO_CLR_BREAK_1_BASED)
     monitor_printf (current_monitor->clr_break, i + 1);
   else
     monitor_printf (current_monitor->clr_break, i);
   monitor_expect_prompt (((void*)0), 0);
   return 0;
 }
    }
  fprintf_unfiltered (gdb_stderr,
        "Can't find breakpoint associated with 0x%s\n",
        paddr_nz (addr));
  return 1;
}
