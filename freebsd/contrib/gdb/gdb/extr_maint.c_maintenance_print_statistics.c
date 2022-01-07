
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_objfile_statistics () ;
 int print_symbol_bcache_statistics () ;

void
maintenance_print_statistics (char *args, int from_tty)
{
  print_objfile_statistics ();
  print_symbol_bcache_statistics ();
}
