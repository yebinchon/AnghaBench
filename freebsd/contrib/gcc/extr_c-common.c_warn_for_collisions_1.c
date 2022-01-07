
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct tlist {scalar_t__ expr; scalar_t__ writer; struct tlist* next; } ;


 scalar_t__ DECL_NAME (scalar_t__) ;
 int NULL_TREE ;
 struct tlist* new_tlist (struct tlist*,scalar_t__,int ) ;
 struct tlist* warned_ids ;
 int warning (int ,char*,scalar_t__) ;

__attribute__((used)) static void
warn_for_collisions_1 (tree written, tree writer, struct tlist *list,
         int only_writes)
{
  struct tlist *tmp;


  for (tmp = warned_ids; tmp; tmp = tmp->next)
    if (tmp->expr == written)
      return;

  while (list)
    {
      if (list->expr == written
   && list->writer != writer
   && (!only_writes || list->writer)
   && DECL_NAME (list->expr))
 {
   warned_ids = new_tlist (warned_ids, written, NULL_TREE);
   warning (0, "operation on %qE may be undefined", list->expr);
 }
      list = list->next;
    }
}
