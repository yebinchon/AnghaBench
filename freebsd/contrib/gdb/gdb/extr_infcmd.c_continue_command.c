
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpstat ;
typedef int CORE_ADDR ;


 int ERROR_NO_INFERIOR ;
 int TARGET_SIGNAL_DEFAULT ;
 int async_disable_stdin () ;
 int bpstat_num (int *) ;
 int clear_proceed_status () ;
 int error (char*) ;
 scalar_t__ event_loop_p ;
 scalar_t__ parse_and_eval_long (char*) ;
 int printf_filtered (char*) ;
 int proceed (int ,int ,int ) ;
 int set_ignore_count (int,scalar_t__,int) ;
 int stop_bpstat ;
 int strip_bg_char (char**) ;
 scalar_t__ target_can_async_p () ;

void
continue_command (char *proc_count_exp, int from_tty)
{
  int async_exec = 0;
  ERROR_NO_INFERIOR;


  if (proc_count_exp != ((void*)0))
    async_exec = strip_bg_char (&proc_count_exp);



  if (event_loop_p && async_exec && !target_can_async_p ())
    error ("Asynchronous execution not supported on this target.");



  if (event_loop_p && !async_exec && target_can_async_p ())
    {

      async_disable_stdin ();
    }



  if (proc_count_exp != ((void*)0))
    {
      bpstat bs = stop_bpstat;
      int num = bpstat_num (&bs);
      if (num == 0 && from_tty)
 {
   printf_filtered
     ("Not stopped at any breakpoint; argument ignored.\n");
 }
      while (num != 0)
 {
   set_ignore_count (num,
       parse_and_eval_long (proc_count_exp) - 1,
       from_tty);


   if (from_tty)
     printf_filtered ("  ");
   num = bpstat_num (&bs);
 }
    }

  if (from_tty)
    printf_filtered ("Continuing.\n");

  clear_proceed_status ();

  proceed ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 0);
}
