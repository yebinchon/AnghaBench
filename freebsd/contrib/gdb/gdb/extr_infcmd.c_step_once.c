
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct TYPE_2__ {int integer; } ;
struct continuation_arg {TYPE_1__ data; struct continuation_arg* next; } ;
typedef int CORE_ADDR ;


 int STEP_OVER_ALL ;
 int STEP_OVER_NONE ;
 int TARGET_SIGNAL_DEFAULT ;
 int add_intermediate_continuation (int ,struct continuation_arg*) ;
 int clear_proceed_status () ;
 int error (char*) ;
 int find_pc_line_pc_range (int ,int*,int*) ;
 scalar_t__ find_pc_partial_function (int ,char**,int*,int*) ;
 struct frame_info* get_current_frame () ;
 int get_frame_id (struct frame_info*) ;
 int printf_filtered (char*,char*) ;
 int proceed (int ,int ,int) ;
 int read_sp () ;
 int step_1_continuation ;
 int step_frame_id ;
 int step_multi ;
 int step_over_calls ;
 int step_range_end ;
 int step_range_start ;
 int step_sp ;
 scalar_t__ step_stop_if_no_debug ;
 int stop_pc ;
 int target_terminal_ours () ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
step_once (int skip_subroutines, int single_inst, int count)
{
  struct continuation_arg *arg1;
  struct continuation_arg *arg2;
  struct continuation_arg *arg3;
  struct frame_info *frame;

  if (count > 0)
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


   if (step_range_end == 0 && step_stop_if_no_debug)
     {
       step_range_start = step_range_end = 1;
     }
   else if (step_range_end == 0)
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
      arg1 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg2 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg3 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg1->next = arg2;
      arg1->data.integer = skip_subroutines;
      arg2->next = arg3;
      arg2->data.integer = single_inst;
      arg3->next = ((void*)0);
      arg3->data.integer = count;
      add_intermediate_continuation (step_1_continuation, arg1);
      proceed ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);
    }
}
