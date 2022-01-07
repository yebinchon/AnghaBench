
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ line; int * symtab; scalar_t__ pc; } ;
struct breakpoint {int thread; int disposition; int enable_state; int * addr_string; int * cond_string; int * cond; scalar_t__ number; } ;


 int bp_catch_exec ;
 int bp_enabled ;
 scalar_t__ breakpoint_count ;
 int disp_del ;
 int disp_donttouch ;
 int init_sal (struct symtab_and_line*) ;
 int mention (struct breakpoint*) ;
 int * savestring (char*,int ) ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int ) ;
 int strlen (char*) ;

void
create_exec_event_catchpoint (int tempflag, char *cond_string)
{
  struct symtab_and_line sal;
  struct breakpoint *b;
  int thread = -1;

  init_sal (&sal);
  sal.pc = 0;
  sal.symtab = ((void*)0);
  sal.line = 0;

  b = set_raw_breakpoint (sal, bp_catch_exec);
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
