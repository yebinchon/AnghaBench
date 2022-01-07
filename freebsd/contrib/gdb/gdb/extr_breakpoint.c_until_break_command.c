
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtabs_and_lines {int nelts; struct symtab_and_line* sals; } ;
struct symtab_and_line {int pc; } ;
struct symtab {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {struct cleanup* pointer; } ;
struct continuation_arg {TYPE_1__ data; int * next; } ;
struct cleanup {int dummy; } ;
struct breakpoint {int dummy; } ;


 int TARGET_SIGNAL_DEFAULT ;
 int add_continuation (int ,struct continuation_arg*) ;
 int bp_until ;
 int clear_proceed_status () ;
 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 int default_breakpoint_line ;
 struct symtab* default_breakpoint_symtab ;
 scalar_t__ default_breakpoint_valid ;
 struct frame_info* deprecated_selected_frame ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 scalar_t__ event_loop_p ;
 struct symtab_and_line find_pc_line (int ,int ) ;
 int get_frame_id (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 struct cleanup* make_cleanup_delete_breakpoint (struct breakpoint*) ;
 struct cleanup* make_exec_cleanup_delete_breakpoint (struct breakpoint*) ;
 int null_frame_id ;
 int proceed (int,int ,int ) ;
 int resolve_sal_pc (struct symtab_and_line*) ;
 struct breakpoint* set_momentary_breakpoint (struct symtab_and_line,int ,int ) ;
 scalar_t__ target_can_async_p () ;
 int until_break_command_continuation ;
 int xfree (struct symtab_and_line*) ;
 scalar_t__ xmalloc (int) ;

void
until_break_command (char *arg, int from_tty, int anywhere)
{
  struct symtabs_and_lines sals;
  struct symtab_and_line sal;
  struct frame_info *prev_frame = get_prev_frame (deprecated_selected_frame);
  struct breakpoint *breakpoint;
  struct cleanup *old_chain;
  struct continuation_arg *arg1;


  clear_proceed_status ();




  if (default_breakpoint_valid)
    sals = decode_line_1 (&arg, 1, default_breakpoint_symtab,
     default_breakpoint_line, (char ***) ((void*)0), ((void*)0));
  else
    sals = decode_line_1 (&arg, 1, (struct symtab *) ((void*)0),
     0, (char ***) ((void*)0), ((void*)0));

  if (sals.nelts != 1)
    error ("Couldn't get information on specified line.");

  sal = sals.sals[0];
  xfree (sals.sals);

  if (*arg)
    error ("Junk at end of arguments.");

  resolve_sal_pc (&sal);

  if (anywhere)


    breakpoint = set_momentary_breakpoint (sal, null_frame_id, bp_until);
  else


    breakpoint = set_momentary_breakpoint (sal,
        get_frame_id (deprecated_selected_frame),
        bp_until);

  if (!event_loop_p || !target_can_async_p ())
    old_chain = make_cleanup_delete_breakpoint (breakpoint);
  else
    old_chain = make_exec_cleanup_delete_breakpoint (breakpoint);
  if (event_loop_p && target_can_async_p ())
    {




      arg1 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg1->next = ((void*)0);
      arg1->data.pointer = old_chain;

      add_continuation (until_break_command_continuation, arg1);
    }



  if (prev_frame)
    {
      sal = find_pc_line (get_frame_pc (prev_frame), 0);
      sal.pc = get_frame_pc (prev_frame);
      breakpoint = set_momentary_breakpoint (sal, get_frame_id (prev_frame),
          bp_until);
      if (!event_loop_p || !target_can_async_p ())
 make_cleanup_delete_breakpoint (breakpoint);
      else
 make_exec_cleanup_delete_breakpoint (breakpoint);
    }

  proceed (-1, TARGET_SIGNAL_DEFAULT, 0);


  if (!event_loop_p || !target_can_async_p ())
    do_cleanups (old_chain);
}
