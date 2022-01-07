
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decision_head {struct decision* first; struct decision* last; } ;
struct decision {struct decision* prev; struct decision* next; TYPE_1__* tests; struct decision_head success; int position; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int gcc_assert (int) ;
 scalar_t__ maybe_both_true (struct decision*,struct decision*,int ) ;
 int merge_accept_insn (struct decision*,struct decision*) ;
 scalar_t__ nodes_identical (struct decision*,struct decision*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void
merge_trees (struct decision_head *oldh, struct decision_head *addh)
{
  struct decision *next, *add;

  if (addh->first == 0)
    return;
  if (oldh->first == 0)
    {
      *oldh = *addh;
      return;
    }


  gcc_assert (!strcmp (oldh->first->position, addh->first->position));

  for (add = addh->first; add ; add = next)
    {
      struct decision *old, *insert_before = ((void*)0);

      next = add->next;
      for (old = oldh->last; old; old = old->prev)
 {
   if (nodes_identical (old, add))
     {
       merge_accept_insn (old, add);
       merge_trees (&old->success, &add->success);
       goto merged_nodes;
     }

   if (maybe_both_true (old, add, 0))
     break;





   if ((int) add->tests->type < (int) old->tests->type)
     insert_before = old;
 }

      if (insert_before == ((void*)0))
 {
   add->next = ((void*)0);
   add->prev = oldh->last;
   oldh->last->next = add;
   oldh->last = add;
 }
      else
 {
   if ((add->prev = insert_before->prev) != ((void*)0))
     add->prev->next = add;
   else
     oldh->first = add;
   add->next = insert_before;
   insert_before->prev = add;
 }

    merged_nodes:;
    }
}
