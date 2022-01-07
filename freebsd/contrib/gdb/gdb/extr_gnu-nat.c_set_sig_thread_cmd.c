
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inf {scalar_t__ signal_thread; } ;


 int PIDGET (int ) ;
 int atoi (char*) ;
 struct inf* cur_inf () ;
 int error (char*,...) ;
 scalar_t__ inf_tid_to_thread (struct inf*,int) ;
 int isdigit (char) ;
 scalar_t__ strcmp (char*,char*) ;
 int thread_id_to_pid (int ) ;

__attribute__((used)) static void
set_sig_thread_cmd (char *args, int from_tty)
{
  struct inf *inf = cur_inf ();

  if (!args || (!isdigit (*args) && strcmp (args, "none") != 0))
    error ("Illegal argument to \"set signal-thread\" command.\n"
    "Should be an integer thread ID, or `none'.");

  if (strcmp (args, "none") == 0)
    inf->signal_thread = 0;
  else
    {
      int tid = PIDGET (thread_id_to_pid (atoi (args)));
      if (tid < 0)
 error ("Thread ID %s not known.  Use the \"info threads\" command to\n"
        "see the IDs of currently known threads.", args);
      inf->signal_thread = inf_tid_to_thread (inf, tid);
    }
}
