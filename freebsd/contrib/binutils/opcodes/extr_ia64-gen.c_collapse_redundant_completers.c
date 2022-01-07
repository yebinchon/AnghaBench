
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct main_entry {int * completers; struct main_entry* next; } ;
struct TYPE_2__ {int num; } ;


 int abort () ;
 int compute_completer_bits (struct main_entry*,int *) ;
 TYPE_1__** glist ;
 int glistlen ;
 int * insert_gclist (int *) ;
 struct main_entry* maintable ;

__attribute__((used)) static void
collapse_redundant_completers (void)
{
  struct main_entry *ptr;
  int x;

  for (ptr = maintable; ptr != ((void*)0); ptr = ptr->next)
    {
      if (ptr->completers == ((void*)0))
 abort ();

      compute_completer_bits (ptr, ptr->completers);
      ptr->completers = insert_gclist (ptr->completers);
    }


  for (x = 0; x < glistlen; x++)
    glist[x]->num = x;
}
