#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct link {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct bearer {TYPE_1__ publ; int /*<<< orphan*/  cong_links; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bearer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bearer*,struct link*) ; 

int FUNC5(struct bearer *b_ptr, struct link *l_ptr)
{
	int res = 1;

	if (FUNC1(&b_ptr->cong_links))
		return 1;
	FUNC2(&b_ptr->publ.lock);
	if (!FUNC0(b_ptr)) {
		FUNC4(b_ptr, l_ptr);
		res = 0;
	}
	FUNC3(&b_ptr->publ.lock);
	return res;
}