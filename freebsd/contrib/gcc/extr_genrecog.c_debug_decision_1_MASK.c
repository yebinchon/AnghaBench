#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct decision_test {struct decision_test* next; } ;
struct decision {int number; TYPE_2__* afterward; TYPE_1__* next; struct decision_test* tests; } ;
struct TYPE_4__ {int number; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct decision_test*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (struct decision *d, int indent)
{
  int i;
  struct decision_test *test;

  if (d == NULL)
    {
      for (i = 0; i < indent; ++i)
	FUNC3 (' ', stderr);
      FUNC2 ("(nil)\n", stderr);
      return;
    }

  for (i = 0; i < indent; ++i)
    FUNC3 (' ', stderr);

  FUNC3 ('{', stderr);
  test = d->tests;
  if (test)
    {
      FUNC0 (test);
      while ((test = test->next) != NULL)
	{
	  FUNC2 (" + ", stderr);
	  FUNC0 (test);
	}
    }
  FUNC1 (stderr, "} %d n %d a %d\n", d->number,
	   (d->next ? d->next->number : -1),
	   (d->afterward ? d->afterward->number : -1));
}