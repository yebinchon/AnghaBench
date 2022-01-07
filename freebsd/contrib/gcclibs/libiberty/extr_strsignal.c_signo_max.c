
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int ,int ) ;
 int init_signal_tables () ;
 int num_signal_names ;
 int * signal_names ;
 int sys_nsig ;

int
signo_max (void)
{
  int maxsize;

  if (signal_names == ((void*)0))
    {
      init_signal_tables ();
    }
  maxsize = MAX (sys_nsig, num_signal_names);
  return (maxsize - 1);
}
