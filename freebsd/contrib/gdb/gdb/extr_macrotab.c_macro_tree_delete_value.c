
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int dummy; } ;
struct macro_definition {scalar_t__ kind; int argc; scalar_t__ replacement; scalar_t__* argv; struct macro_table* table; } ;


 int macro_bcache_free (struct macro_table*,...) ;
 int macro_free (struct macro_definition*,struct macro_table*) ;
 scalar_t__ macro_function_like ;

__attribute__((used)) static void
macro_tree_delete_value (void *untyped_definition)
{
  struct macro_definition *d = (struct macro_definition *) untyped_definition;
  struct macro_table *t = d->table;

  if (d->kind == macro_function_like)
    {
      int i;

      for (i = 0; i < d->argc; i++)
        macro_bcache_free (t, (char *) d->argv[i]);
      macro_bcache_free (t, (char **) d->argv);
    }

  macro_bcache_free (t, (char *) d->replacement);
  macro_free (d, t);
}
