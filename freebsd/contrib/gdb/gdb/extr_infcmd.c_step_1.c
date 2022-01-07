
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int CORE_ADDR ;


 int ERROR_NO_INFERIOR ;
 int STEP_OVER_ALL ;
 int STEP_OVER_NONE ;
 int TARGET_SIGNAL_DEFAULT ;
 int async_disable_stdin () ;
 int clear_proceed_status () ;
 int disable_longjmp_breakpoint_cleanup ;
 int do_cleanups (struct cleanup*) ;
 int enable_longjmp_breakpoint () ;
 int error (char*) ;
 scalar_t__ event_loop_p ;
 int find_pc_line_pc_range (int ,int*,int*) ;
 scalar_t__ find_pc_partial_function (int ,char**,int*,int*) ;
 struct frame_info* get_current_frame () ;
 int get_frame_id (struct frame_info*) ;
 struct cleanup* make_cleanup (int ,int ) ;
 int make_exec_cleanup (int ,int ) ;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,char*) ;
 int proceed (int ,int ,int) ;
 int read_sp () ;
 int step_frame_id ;
 int step_multi ;
 int step_once (int,int,int) ;
 int step_over_calls ;
 int step_range_end ;
 int step_range_start ;
 int step_sp ;
 int stop_pc ;
 int stop_step ;
 int strip_bg_char (char**) ;
 scalar_t__ target_can_async_p () ;
 int target_terminal_ours () ;

__attribute__((used)) static void
step_1 (int skip_subroutines, int single_inst, char *count_string)
{
  int count = 1;
  struct frame_info *frame;
  struct cleanup *cleanups = 0;
  int async_exec = 0;

  ERROR_NO_INFERIOR;

  if (count_string)
    async_exec = strip_bg_char (&count_string);



  if (event_loop_p && async_exec && !target_can_async_p ())
    error ("Asynchronous execution not supported on this target.");



  if (event_loop_p && !async_exec && target_can_async_p ())
    {

      async_disable_stdin ();
    }

  count = count_string ? parse_and_eval_long (count_string) : 1;

  if (!single_inst || skip_subroutines)
    {
      enable_longjmp_breakpoint ();
      if (!event_loop_p || !target_can_async_p ())
 cleanups = make_cleanup (disable_longjmp_breakpoint_cleanup, 0 );
      else
        make_exec_cleanup (disable_longjmp_breakpoint_cleanup, 0 );
    }


  if (!event_loop_p || !target_can_async_p ())
    {
      for (; count > 0; count--)
 {
   clear_proceed_status ();

   frame = get_current_frame ();
   if (!frame)
     error ("No current frame");
   step_frame_id = get_frame_id (frame);
   step_sp = read_sp ();

   if (!single_inst)
     {
       find_pc_line_pc_range (stop_pc, &step_range_start, &step_range_end);
       if (step_range_end == 0)
  {
    char *name;
    if (find_pc_partial_function (stop_pc, &name, &step_range_start,
      &step_range_end) == 0)
      error ("Cannot find bounds of current function");

    target_terminal_ours ();
    printf_filtered ("Single stepping until exit from function %s, \nwhich has no line number information.\n", name);


  }
     }
   else
     {

       step_range_start = step_range_end = 1;
       if (!skip_subroutines)



  step_over_calls = STEP_OVER_NONE;
     }

   if (skip_subroutines)
     step_over_calls = STEP_OVER_ALL;

   step_multi = (count > 1);
   proceed ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);

   if (!stop_step)
     break;
 }

      if (!single_inst || skip_subroutines)
 do_cleanups (cleanups);
      return;
    }




  else
    {
      if (event_loop_p && target_can_async_p ())
 step_once (skip_subroutines, single_inst, count);
    }
}
