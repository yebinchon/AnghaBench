
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_file_attach (char*,int) ;
 int target_preopen (int) ;

void
exec_open (char *args, int from_tty)
{
  target_preopen (from_tty);
  exec_file_attach (args, from_tty);
}
