
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int bcache; } ;


 int gdb_assert (int) ;
 int xfree (void*) ;

__attribute__((used)) static void
macro_bcache_free (struct macro_table *t, void *obj)
{
  gdb_assert (! t->bcache);
  xfree (obj);
}
