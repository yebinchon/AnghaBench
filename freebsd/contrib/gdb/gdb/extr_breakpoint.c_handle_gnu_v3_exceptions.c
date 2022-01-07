
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {scalar_t__ nelts; char* sals; } ;
struct breakpoint {int thread; char* addr_string; int * ops; int disposition; int enable_state; int * cond_string; int * cond; scalar_t__ number; } ;
typedef enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;


 int EX_EVENT_CATCH ;
 int bp_breakpoint ;
 int bp_enabled ;
 scalar_t__ breakpoint_count ;
 struct symtabs_and_lines decode_line_1 (char**,int,int *,int ,int *,int *) ;
 int disp_del ;
 int disp_donttouch ;
 int gnu_v3_exception_catchpoint_ops ;
 int mention (struct breakpoint*) ;
 int * savestring (char*,int ) ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (char,int ) ;
 int strlen (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static int
handle_gnu_v3_exceptions (int tempflag, char *cond_string,
     enum exception_event_kind ex_event, int from_tty)
{
  char *trigger_func_name, *nameptr;
  struct symtabs_and_lines sals;
  struct breakpoint *b;

  if (ex_event == EX_EVENT_CATCH)
    trigger_func_name = xstrdup ("__cxa_begin_catch");
  else
    trigger_func_name = xstrdup ("__cxa_throw");

  nameptr = trigger_func_name;
  sals = decode_line_1 (&nameptr, 1, ((void*)0), 0, ((void*)0), ((void*)0));
  if (sals.nelts == 0)
    {
      xfree (trigger_func_name);
      return 0;
    }

  b = set_raw_breakpoint (sals.sals[0], bp_breakpoint);
  set_breakpoint_count (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = ((void*)0);
  b->cond_string = (cond_string == ((void*)0)) ?
    ((void*)0) : savestring (cond_string, strlen (cond_string));
  b->thread = -1;
  b->addr_string = trigger_func_name;
  b->enable_state = bp_enabled;
  b->disposition = tempflag ? disp_del : disp_donttouch;
  b->ops = &gnu_v3_exception_catchpoint_ops;

  xfree (sals.sals);
  mention (b);
  return 1;
}
