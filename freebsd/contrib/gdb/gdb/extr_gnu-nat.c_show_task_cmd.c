
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ pause_sc; scalar_t__ detach_sc; scalar_t__ default_thread_detach_sc; scalar_t__ task; } ;


 int check_empty (char*,char*) ;
 struct inf* cur_inf () ;
 int show_exceptions_cmd (int ,int) ;
 int show_sig_thread_cmd (int ,int) ;
 int show_signals_cmd (int ,int) ;
 int show_stopped_cmd (int ,int) ;
 int show_task_detach_sc_cmd (int ,int) ;
 int show_task_pause_cmd (int ,int) ;
 int show_thread_default_detach_sc_cmd (int ,int) ;
 int show_thread_default_pause_cmd (int ,int) ;
 int show_thread_default_run_cmd (int ,int) ;

__attribute__((used)) static void
show_task_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();

  check_empty (args, "show task");

  show_signals_cmd (0, from_tty);
  show_exceptions_cmd (0, from_tty);
  show_task_pause_cmd (0, from_tty);

  if (inf->pause_sc == 0)
    show_thread_default_pause_cmd (0, from_tty);
  show_thread_default_run_cmd (0, from_tty);

  if (inf->task)
    {
      show_stopped_cmd (0, from_tty);
      show_sig_thread_cmd (0, from_tty);
    }

  if (inf->detach_sc != 0)
    show_task_detach_sc_cmd (0, from_tty);
  if (inf->default_thread_detach_sc != 0)
    show_thread_default_detach_sc_cmd (0, from_tty);
}
