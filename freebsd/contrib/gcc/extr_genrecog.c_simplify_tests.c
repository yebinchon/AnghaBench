
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_test {scalar_t__ type; struct decision_test* next; } ;
struct decision_head {struct decision* first; } ;
struct decision {struct decision_head success; struct decision* next; struct decision_test* tests; } ;


 scalar_t__ DT_code ;
 scalar_t__ DT_mode ;
 scalar_t__ DT_pred ;

__attribute__((used)) static void
simplify_tests (struct decision_head *head)
{
  struct decision *tree;

  for (tree = head->first; tree; tree = tree->next)
    {
      struct decision_test *a, *b;

      a = tree->tests;
      b = a->next;
      if (b == ((void*)0))
 continue;


      while (b && b->type != DT_pred)
 b = b->next;
      if (b)
 {



   while (a->type == DT_mode || a->type == DT_code)
     a = a->next;
   tree->tests = a;
 }
    }


  for (tree = head->first; tree; tree = tree->next)
    simplify_tests (&tree->success);
}
