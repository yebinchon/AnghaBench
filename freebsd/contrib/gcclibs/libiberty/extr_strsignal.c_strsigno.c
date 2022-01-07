
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_signal_tables () ;
 int num_signal_names ;
 char** signal_names ;
 int sprintf (char*,char*,int) ;

const char *
strsigno (int signo)
{
  const char *name;
  static char buf[32];

  if (signal_names == ((void*)0))
    {
      init_signal_tables ();
    }

  if ((signo < 0) || (signo >= num_signal_names))
    {

      name = ((void*)0);
    }
  else if ((signal_names == ((void*)0)) || (signal_names[signo] == ((void*)0)))
    {

      sprintf (buf, "Signal %d", signo);
      name = (const char *) buf;
    }
  else
    {

      name = signal_names[signo];
    }

  return (name);
}
