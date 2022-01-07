
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exec_file_command (char*,int) ;
 int file_changed_hook (char*) ;
 int symbol_file_command (char*,int) ;

__attribute__((used)) static void
file_command (char *arg, int from_tty)
{


  exec_file_command (arg, from_tty);
  symbol_file_command (arg, from_tty);
  if (file_changed_hook)
    file_changed_hook (arg);
}
