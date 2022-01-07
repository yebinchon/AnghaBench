
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int ,int ) ;
 int * error_names ;
 int init_error_tables () ;
 int num_error_names ;
 int sys_nerr ;

int
errno_max (void)
{
  int maxsize;

  if (error_names == ((void*)0))
    {
      init_error_tables ();
    }
  maxsize = MAX (sys_nerr, num_error_names);
  return (maxsize - 1);
}
