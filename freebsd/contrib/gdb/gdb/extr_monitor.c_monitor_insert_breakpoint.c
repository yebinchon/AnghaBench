
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int num_breakpoints; int * set_break; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ADDR_BITS_REMOVE (scalar_t__) ;
 int MO_ADDR_BITS_REMOVE ;
 scalar_t__* breakaddr ;
 int current_gdbarch ;
 TYPE_1__* current_monitor ;
 int error (char*,...) ;
 unsigned char* gdbarch_breakpoint_from_pc (int ,scalar_t__*,int*) ;
 int monitor_debug (char*,int ) ;
 int monitor_expect_prompt (int *,int ) ;
 int monitor_printf (int *,scalar_t__) ;
 int monitor_read_memory (scalar_t__,char*,int) ;
 int paddr (scalar_t__) ;

__attribute__((used)) static int
monitor_insert_breakpoint (CORE_ADDR addr, char *shadow)
{
  int i;
  const unsigned char *bp;
  int bplen;

  monitor_debug ("MON inst bkpt %s\n", paddr (addr));
  if (current_monitor->set_break == ((void*)0))
    error ("No set_break defined for this monitor");

  if (current_monitor->flags & MO_ADDR_BITS_REMOVE)
    addr = ADDR_BITS_REMOVE (addr);


  bp = gdbarch_breakpoint_from_pc (current_gdbarch, &addr, &bplen);

  for (i = 0; i < current_monitor->num_breakpoints; i++)
    {
      if (breakaddr[i] == 0)
 {
   breakaddr[i] = addr;
   monitor_read_memory (addr, shadow, bplen);
   monitor_printf (current_monitor->set_break, addr);
   monitor_expect_prompt (((void*)0), 0);
   return 0;
 }
    }

  error ("Too many breakpoints (> %d) for monitor.", current_monitor->num_breakpoints);
}
