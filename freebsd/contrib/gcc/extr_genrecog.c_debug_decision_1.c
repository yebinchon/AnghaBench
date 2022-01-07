
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct decision_test {struct decision_test* next; } ;
struct decision {int number; TYPE_2__* afterward; TYPE_1__* next; struct decision_test* tests; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int number; } ;


 int debug_decision_2 (struct decision_test*) ;
 int fprintf (int ,char*,int,int,int) ;
 int fputs (char*,int ) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
debug_decision_1 (struct decision *d, int indent)
{
  int i;
  struct decision_test *test;

  if (d == ((void*)0))
    {
      for (i = 0; i < indent; ++i)
 putc (' ', stderr);
      fputs ("(nil)\n", stderr);
      return;
    }

  for (i = 0; i < indent; ++i)
    putc (' ', stderr);

  putc ('{', stderr);
  test = d->tests;
  if (test)
    {
      debug_decision_2 (test);
      while ((test = test->next) != ((void*)0))
 {
   fputs (" + ", stderr);
   debug_decision_2 (test);
 }
    }
  fprintf (stderr, "} %d n %d a %d\n", d->number,
    (d->next ? d->next->number : -1),
    (d->afterward ? d->afterward->number : -1));
}
