
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {struct pending* next; } ;


 struct pending* file_symbols ;
 int free_macro_table (scalar_t__) ;
 int free_pending_blocks () ;
 struct pending* free_pendings ;
 struct pending* global_symbols ;
 scalar_t__ pending_macros ;
 int xfree (void*) ;

void
really_free_pendings (void *dummy)
{
  struct pending *next, *next1;

  for (next = free_pendings; next; next = next1)
    {
      next1 = next->next;
      xfree ((void *) next);
    }
  free_pendings = ((void*)0);

  free_pending_blocks ();

  for (next = file_symbols; next != ((void*)0); next = next1)
    {
      next1 = next->next;
      xfree ((void *) next);
    }
  file_symbols = ((void*)0);

  for (next = global_symbols; next != ((void*)0); next = next1)
    {
      next1 = next->next;
      xfree ((void *) next);
    }
  global_symbols = ((void*)0);

  if (pending_macros)
    free_macro_table (pending_macros);
}
