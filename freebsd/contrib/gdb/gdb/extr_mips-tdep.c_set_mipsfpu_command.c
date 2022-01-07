
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_unfiltered (char*) ;
 int show_mipsfpu_command (char*,int) ;

__attribute__((used)) static void
set_mipsfpu_command (char *args, int from_tty)
{
  printf_unfiltered
    ("\"set mipsfpu\" must be followed by \"double\", \"single\",\"none\" or \"auto\".\n");
  show_mipsfpu_command (args, from_tty);
}
