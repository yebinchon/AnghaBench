
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {struct macro_source_file* main_source; } ;
struct macro_source_file {int dummy; } ;


 int gdb_assert (struct macro_source_file*) ;

struct macro_source_file *
macro_main (struct macro_table *t)
{
  gdb_assert (t->main_source);

  return t->main_source;
}
