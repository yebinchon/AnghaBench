
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_head {struct decision* first; } ;
struct decision {scalar_t__ subroutine_number; int need_label; struct decision* afterward; struct decision_head success; struct decision* next; } ;


 scalar_t__ maybe_both_true (struct decision*,struct decision*,int) ;

__attribute__((used)) static void
find_afterward (struct decision_head *head, struct decision *real_afterward)
{
  struct decision *p, *q, *afterward;




  p = head->first;
  afterward = (p->subroutine_number > 0 ? ((void*)0) : real_afterward);

  for ( ; p ; p = p->next)
    {

      for (q = p->next; q ; q = q->next)
 if (maybe_both_true (p, q, 1))
   break;



      if (!q)
 q = afterward;
      p->afterward = q;
      if (q)
 q->need_label = 1;
    }


  for (p = head->first; p ; p = p->next)
    if (p->success.first)
      find_afterward (&p->success, p->afterward);




  p = head->first;
  if (p->subroutine_number > 0)
    p->afterward = real_afterward;
}
