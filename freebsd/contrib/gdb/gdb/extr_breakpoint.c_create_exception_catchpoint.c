
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
struct breakpoint {int thread; int disposition; int enable_state; int * addr_string; int * cond_string; int * cond; scalar_t__ number; } ;
typedef enum exception_event_kind { ____Placeholder_exception_event_kind } exception_event_kind ;
typedef enum bptype { ____Placeholder_bptype } bptype ;




 int bp_catch_catch ;
 int bp_catch_throw ;
 int bp_enabled ;
 scalar_t__ breakpoint_count ;
 int disp_del ;
 int disp_donttouch ;
 int error (char*) ;
 int mention (struct breakpoint*) ;
 int * savestring (char*,int ) ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
create_exception_catchpoint (int tempflag, char *cond_string,
        enum exception_event_kind ex_event,
        struct symtab_and_line *sal)
{
  struct breakpoint *b;
  int thread = -1;
  enum bptype bptype;

  if (!sal)
    return;

  switch (ex_event)
    {
    case 128:
      bptype = bp_catch_throw;
      break;
    case 129:
      bptype = bp_catch_catch;
      break;
    default:
      error ("Internal error -- invalid catchpoint kind");
    }

  b = set_raw_breakpoint (*sal, bptype);
  set_breakpoint_count (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = ((void*)0);
  b->cond_string = (cond_string == ((void*)0)) ?
    ((void*)0) : savestring (cond_string, strlen (cond_string));
  b->thread = thread;
  b->addr_string = ((void*)0);
  b->enable_state = bp_enabled;
  b->disposition = tempflag ? disp_del : disp_donttouch;
  mention (b);
}
