
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int definitions; int main_source; } ;


 int free_macro_source_file (int ) ;
 int splay_tree_delete (int ) ;

void
free_macro_table (struct macro_table *table)
{

  free_macro_source_file (table->main_source);


  splay_tree_delete (table->definitions);
}
