#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct timer {struct lmodule* owner; } ;
struct lmodule {int dummy; } ;

/* Variables and functions */
 struct timer* FUNC0 (int /*<<< orphan*/ *) ; 
 struct timer* FUNC1 (struct timer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  timer_list ; 
 int /*<<< orphan*/  FUNC2 (struct timer*) ; 

__attribute__((used)) static void
FUNC3(struct lmodule *mod)
{
	struct timer *t, *t1;

	t = FUNC0(&timer_list);
	while (t != NULL) {
		t1 = FUNC1(t, link);
		if (t->owner == mod)
			FUNC2(t);
		t = t1;
	}
}