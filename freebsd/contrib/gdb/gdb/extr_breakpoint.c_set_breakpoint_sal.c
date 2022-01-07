
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
struct breakpoint {int thread; scalar_t__ cond; scalar_t__ number; } ;


 int bp_breakpoint ;
 scalar_t__ breakpoint_count ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int ) ;

struct breakpoint *
set_breakpoint_sal (struct symtab_and_line sal)
{
  struct breakpoint *b;
  b = set_raw_breakpoint (sal, bp_breakpoint);
  set_breakpoint_count (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = 0;
  b->thread = -1;
  return b;
}
