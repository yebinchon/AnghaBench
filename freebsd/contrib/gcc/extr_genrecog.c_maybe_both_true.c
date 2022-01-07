
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct decision* first; } ;
struct decision {struct decision* next; TYPE_1__ success; int tests; int position; } ;


 int gcc_assert (int) ;
 int maybe_both_true_1 (int ,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
maybe_both_true (struct decision *d1, struct decision *d2,
   int toplevel)
{
  struct decision *p1, *p2;
  int cmp;
  cmp = strcmp (d1->position, d2->position);
  if (cmp != 0)
    {
      gcc_assert (!toplevel);


      if (cmp > 0)
 p1 = d1, d1 = d2, d2 = p1;

      if (d1->success.first == 0)
 return 1;
      for (p1 = d1->success.first; p1; p1 = p1->next)
 if (maybe_both_true (p1, d2, 0))
   return 1;

      return 0;
    }


  cmp = maybe_both_true_1 (d1->tests, d2->tests);
  if (cmp >= 0)
    return cmp;







  if (toplevel || d1->success.first == 0 || d2->success.first == 0)
    return 1;

  for (p1 = d1->success.first; p1; p1 = p1->next)
    for (p2 = d2->success.first; p2; p2 = p2->next)
      if (maybe_both_true (p1, p2, 0))
 return 1;

  return 0;
}
