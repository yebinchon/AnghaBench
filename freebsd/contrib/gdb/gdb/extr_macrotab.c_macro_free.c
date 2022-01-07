
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int obstack; } ;


 int gdb_assert (int) ;
 int xfree (void*) ;

__attribute__((used)) static void
macro_free (void *object, struct macro_table *t)
{
  gdb_assert (! t->obstack);
  xfree (object);
}
