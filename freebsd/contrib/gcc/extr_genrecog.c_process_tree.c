
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_head {int * first; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;


 int PEEPHOLE2 ;
 int break_out_subroutines (struct decision_head*,int) ;
 int factor_tests (struct decision_head*) ;
 int find_afterward (struct decision_head*,int *) ;
 scalar_t__ next_subroutine_number ;
 int simplify_tests (struct decision_head*) ;
 int write_subroutine (struct decision_head*,int) ;
 int write_subroutines (struct decision_head*,int) ;

__attribute__((used)) static void
process_tree (struct decision_head *head, enum routine_type subroutine_type)
{
  if (head->first == ((void*)0))
    {

      if (subroutine_type == PEEPHOLE2)
 return;
    }
  else
    {
      factor_tests (head);

      next_subroutine_number = 0;
      break_out_subroutines (head, 1);
      find_afterward (head, ((void*)0));




      simplify_tests(head);

      write_subroutines (head, subroutine_type);
    }

  write_subroutine (head, subroutine_type);
}
