
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int dummy; } ;
struct frame_id {int dummy; } ;
struct breakpoint {int thread; struct frame_id frame_id; int disposition; int enable_state; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;


 int bp_enabled ;
 int disp_donttouch ;
 scalar_t__ in_thread_list (int ) ;
 int inferior_ptid ;
 int pid_to_thread_id (int ) ;
 struct breakpoint* set_raw_breakpoint (struct symtab_and_line,int) ;

struct breakpoint *
set_momentary_breakpoint (struct symtab_and_line sal, struct frame_id frame_id,
     enum bptype type)
{
  struct breakpoint *b;
  b = set_raw_breakpoint (sal, type);
  b->enable_state = bp_enabled;
  b->disposition = disp_donttouch;
  b->frame_id = frame_id;




  if (in_thread_list (inferior_ptid))
    b->thread = pid_to_thread_id (inferior_ptid);

  return b;
}
