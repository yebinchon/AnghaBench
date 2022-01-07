
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct decision_test {scalar_t__ type; struct decision_test* next; } ;
struct TYPE_4__ {TYPE_1__* first; } ;
struct decision {TYPE_2__ success; struct decision_test* tests; } ;
struct TYPE_3__ {int position; } ;


 int nodes_identical_1 (struct decision_test*,struct decision_test*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
nodes_identical (struct decision *d1, struct decision *d2)
{
  struct decision_test *t1, *t2;

  for (t1 = d1->tests, t2 = d2->tests; t1 && t2; t1 = t1->next, t2 = t2->next)
    {
      if (t1->type != t2->type)
 return 0;
      if (! nodes_identical_1 (t1, t2))
 return 0;
    }


  if (t1 != t2)
    return 0;





  if (d1->success.first
      && d2->success.first
      && strcmp (d1->success.first->position, d2->success.first->position))
    return 0;

  return 1;
}
