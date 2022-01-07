
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {int nsyms; struct pending* next; int * symbol; } ;


 int add_symbol_to_list (int ,struct pending**) ;
 struct pending* free_pendings ;

void
merge_symbol_lists (struct pending **srclist, struct pending **targetlist)
{
  int i;

  if (!srclist || !*srclist)
    return;


  for (i = 0; i < (*srclist)->nsyms; i++)
    add_symbol_to_list ((*srclist)->symbol[i], targetlist);


  merge_symbol_lists (&(*srclist)->next, targetlist);


  (*srclist)->next = free_pendings;
  free_pendings = (*srclist);
}
