
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_stdout ;
 int immediate_quit ;
 int print_gdb_version (int ) ;
 int printf_filtered (char*) ;

__attribute__((used)) static void
show_version (char *args, int from_tty)
{
  immediate_quit++;
  print_gdb_version (gdb_stdout);
  printf_filtered ("\n");
  immediate_quit--;
}
