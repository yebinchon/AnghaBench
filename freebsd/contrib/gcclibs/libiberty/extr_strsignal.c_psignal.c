
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*,...) ;
 int init_signal_tables () ;
 int * signal_names ;
 int stderr ;
 int sys_nsig ;
 char** sys_siglist ;

void
psignal (int signo, char *message)
{
  if (signal_names == ((void*)0))
    {
      init_signal_tables ();
    }
  if ((signo <= 0) || (signo >= sys_nsig))
    {
      fprintf (stderr, "%s: unknown signal\n", message);
    }
  else
    {
      fprintf (stderr, "%s: %s\n", message, sys_siglist[signo]);
    }
}
