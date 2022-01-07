
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision_test {scalar_t__ type; struct decision_test* next; } ;


 scalar_t__ DT_accept_op ;
 scalar_t__ maybe_both_true_2 (struct decision_test*,struct decision_test*) ;

__attribute__((used)) static int
maybe_both_true_1 (struct decision_test *d1, struct decision_test *d2)
{
  struct decision_test *t1, *t2;



  if (d1->type == DT_accept_op || d2->type == DT_accept_op)
    return 1;


  while (d1 && d2 && d1->type == d2->type)
    {
      if (maybe_both_true_2 (d1, d2) == 0)
 return 0;
      d1 = d1->next, d2 = d2->next;
    }


  for (t1 = d1; t1 ; t1 = t1->next)
    for (t2 = d2; t2 ; t2 = t2->next)
      if (maybe_both_true_2 (t1, t2) == 0)
 return 0;

  return -1;
}
