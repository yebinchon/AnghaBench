
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_signal_tables () ;
 int num_signal_names ;
 int ** signal_names ;
 scalar_t__ strcmp (char const*,int *) ;

int
strtosigno (const char *name)
{
  int signo = 0;

  if (name != ((void*)0))
    {
      if (signal_names == ((void*)0))
 {
   init_signal_tables ();
 }
      for (signo = 0; signo < num_signal_names; signo++)
 {
   if ((signal_names[signo] != ((void*)0)) &&
       (strcmp (name, signal_names[signo]) == 0))
     {
       break;
     }
 }
      if (signo == num_signal_names)
 {
   signo = 0;
 }
    }
  return (signo);
}
