
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int definitions; } ;
struct macro_source_file {struct macro_table* table; } ;
struct macro_key {int dummy; } ;
struct macro_definition {int dummy; } ;
typedef int splay_tree_value ;
typedef int splay_tree_key ;


 struct macro_key* check_for_redefinition (struct macro_source_file*,int,char const*,int ,int,char const**,char const*) ;
 int key_compare (struct macro_key*,char const*,struct macro_source_file*,int) ;
 int macro_function_like ;
 struct macro_definition* new_macro_definition (struct macro_table*,int ,int,char const**,char const*) ;
 struct macro_key* new_macro_key (struct macro_table*,char const*,struct macro_source_file*,int) ;
 int splay_tree_insert (int ,int ,int ) ;

void
macro_define_function (struct macro_source_file *source, int line,
                       const char *name, int argc, const char **argv,
                       const char *replacement)
{
  struct macro_table *t = source->table;
  struct macro_key *k;
  struct macro_definition *d;

  k = check_for_redefinition (source, line,
                              name, macro_function_like,
                              argc, argv,
                              replacement);


  if (k && ! key_compare (k, name, source, line))
    return;




  k = new_macro_key (t, name, source, line);
  d = new_macro_definition (t, macro_function_like, argc, argv, replacement);
  splay_tree_insert (t->definitions, (splay_tree_key) k, (splay_tree_value) d);
}
