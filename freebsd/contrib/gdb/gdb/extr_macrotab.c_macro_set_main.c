
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {struct macro_source_file* main_source; } ;
struct macro_source_file {int dummy; } ;


 int gdb_assert (int) ;
 struct macro_source_file* new_source_file (struct macro_table*,char const*) ;

struct macro_source_file *
macro_set_main (struct macro_table *t,
                const char *filename)
{


  gdb_assert (! t->main_source);

  t->main_source = new_source_file (t, filename);

  return t->main_source;
}
