
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ signal_thread; } ;


 struct inf* active_inf () ;
 int check_empty (char*,char*) ;
 int printf_unfiltered (char*,...) ;
 int proc_string (scalar_t__) ;

__attribute__((used)) static void
show_sig_thread_cmd (char *args, int from_tty)
{
  struct inf *inf = active_inf ();
  check_empty (args, "show signal-thread");
  if (inf->signal_thread)
    printf_unfiltered ("The signal thread is %s.\n",
         proc_string (inf->signal_thread));
  else
    printf_unfiltered ("There is no signal thread.\n");
}
