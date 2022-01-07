
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long longint; } ;
struct continuation_arg {TYPE_1__ data; struct continuation_arg* next; } ;
struct cleanup {int dummy; } ;


 int ISATTY (scalar_t__) ;
 int add_continuation (int ,struct continuation_arg*) ;
 int bpstat_do_actions (int *) ;
 int command_line_handler_continuation ;
 int do_cleanups (struct cleanup*) ;
 int execute_command (char*,int) ;
 long get_run_time () ;
 scalar_t__ instream ;
 char* lim_at_start ;
 struct cleanup* make_cleanup (int ,int ) ;
 int null_cleanup ;
 int printf_unfiltered (char*,long,char,...) ;
 int quit_command (char*,int) ;
 scalar_t__ quit_flag ;
 int reinitialize_more_filter () ;
 scalar_t__ sbrk (int ) ;
 scalar_t__ stdin ;
 int stop_bpstat ;
 scalar_t__ target_can_async_p () ;
 scalar_t__ target_executing ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
command_handler (char *command)
{
  struct cleanup *old_chain;
  int stdin_is_tty = ISATTY (stdin);
  struct continuation_arg *arg1;
  struct continuation_arg *arg2;
  long time_at_cmd_start;



  extern int display_time;
  extern int display_space;

  quit_flag = 0;
  if (instream == stdin && stdin_is_tty)
    reinitialize_more_filter ();
  old_chain = make_cleanup (null_cleanup, 0);






  if (command == 0)
    quit_command ((char *) 0, stdin == instream);

  time_at_cmd_start = get_run_time ();

  if (display_space)
    {




    }

  execute_command (command, instream == stdin);




  if (target_can_async_p () && target_executing)
    {
      arg1 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg2 =
 (struct continuation_arg *) xmalloc (sizeof (struct continuation_arg));
      arg1->next = arg2;
      arg2->next = ((void*)0);
      arg1->data.longint = time_at_cmd_start;



      add_continuation (command_line_handler_continuation, arg1);
    }




  if (!target_can_async_p () || !target_executing)
    {
      bpstat_do_actions (&stop_bpstat);
      do_cleanups (old_chain);

      if (display_time)
 {
   long cmd_time = get_run_time () - time_at_cmd_start;

   printf_unfiltered ("Command execution time: %ld.%06ld\n",
        cmd_time / 1000000, cmd_time % 1000000);
 }

      if (display_space)
 {
 }
    }
}
