
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_signal_tables () ;
 int * signal_names ;
 int sprintf (char*,char*,int) ;
 int sys_nsig ;
 int ** sys_siglist ;

const char *
strsignal (int signo)
{
  const char *msg;
  static char buf[32];



  if (signal_names == ((void*)0))
    {
      init_signal_tables ();
    }



  if ((signo < 0) || (signo >= sys_nsig))
    {

      msg = ((void*)0);
    }
  else if ((sys_siglist == ((void*)0)) || (sys_siglist[signo] == ((void*)0)))
    {

      sprintf (buf, "Signal %d", signo);
      msg = (const char *) buf;
    }
  else
    {

      msg = (const char *) sys_siglist[signo];
    }

  return (msg);
}
