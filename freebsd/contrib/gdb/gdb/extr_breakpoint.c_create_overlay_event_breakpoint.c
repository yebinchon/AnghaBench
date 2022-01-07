
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
struct breakpoint {int enable_state; int addr_string; } ;


 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int bp_disabled ;
 int bp_enabled ;
 int bp_overlay_event ;
 struct breakpoint* create_internal_breakpoint (int ,int ) ;
 struct minimal_symbol* lookup_minimal_symbol_text (char*,int *) ;
 scalar_t__ overlay_debugging ;
 int overlay_events_enabled ;
 scalar_t__ ovly_auto ;
 int xstrdup (char*) ;

__attribute__((used)) static void
create_overlay_event_breakpoint (char *func_name)
{
  struct breakpoint *b;
  struct minimal_symbol *m;

  if ((m = lookup_minimal_symbol_text (func_name, ((void*)0))) == ((void*)0))
    return;

  b = create_internal_breakpoint (SYMBOL_VALUE_ADDRESS (m),
      bp_overlay_event);
  b->addr_string = xstrdup (func_name);

  if (overlay_debugging == ovly_auto)
    {
      b->enable_state = bp_enabled;
      overlay_events_enabled = 1;
    }
  else
    {
      b->enable_state = bp_disabled;
      overlay_events_enabled = 0;
    }
}
