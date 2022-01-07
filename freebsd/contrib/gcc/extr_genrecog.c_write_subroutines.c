
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_head {struct decision* first; } ;
struct decision {scalar_t__ subroutine_number; struct decision_head success; struct decision* next; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;


 int write_subroutine (struct decision_head*,int) ;

__attribute__((used)) static void
write_subroutines (struct decision_head *head, enum routine_type type)
{
  struct decision *p;

  for (p = head->first; p ; p = p->next)
    if (p->success.first)
      write_subroutines (&p->success, type);

  if (head->first->subroutine_number > 0)
    write_subroutine (head, type);
}
