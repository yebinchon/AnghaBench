
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_no_arg (char*) ;
 int inferior_io_terminal ;
 int savestring (char*,int ) ;
 int strlen (char*) ;

void
tty_command (char *file, int from_tty)
{
  if (file == 0)
    error_no_arg ("terminal name for running target process");

  inferior_io_terminal = savestring (file, strlen (file));
}
