
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decision_head {struct decision* first; struct decision* last; } ;
struct decision {struct decision_head success; struct decision* next; struct decision* prev; TYPE_1__* tests; int position; } ;
typedef enum decision_type { ____Placeholder_decision_type } decision_type ;
struct TYPE_2__ {int type; struct TYPE_2__* next; } ;


 int DT_code ;
 int DT_elt_one_int ;
 int DT_elt_zero_int ;
 int DT_elt_zero_wide_safe ;
 int DT_mode ;
 int DT_veclen ;
 int merge_trees (struct decision_head*,struct decision_head*) ;
 struct decision* new_decision (int ,struct decision_head*) ;

__attribute__((used)) static void
factor_tests (struct decision_head *head)
{
  struct decision *first, *next;

  for (first = head->first; first && first->next; first = next)
    {
      enum decision_type type;
      struct decision *new, *old_last;

      type = first->tests->type;
      next = first->next;


      if (next->tests->type != type)
 continue;



      if (type != DT_mode
   && type != DT_code
   && type != DT_veclen
   && type != DT_elt_zero_int
   && type != DT_elt_one_int
   && type != DT_elt_zero_wide_safe)
 continue;



      if (first->tests->next != ((void*)0))
 {
   new = new_decision (first->position, &first->success);
   new->tests = first->tests->next;
   first->tests->next = ((void*)0);
 }


      first->next = ((void*)0);
      old_last = head->last;
      head->last = first;



      do
 {
   struct decision_head h;

   if (next->tests->next != ((void*)0))
     {
       new = new_decision (next->position, &next->success);
       new->tests = next->tests->next;
       next->tests->next = ((void*)0);
     }
   new = next;
   next = next->next;
   new->next = ((void*)0);
   h.first = h.last = new;

   merge_trees (head, &h);
 }
      while (next && next->tests->type == type);



      if (next)
 {
   next->prev = head->last;
   head->last->next = next;
   head->last = old_last;
 }
    }


  for (first = head->first; first; first = first->next)
    factor_tests (&first->success);
}
