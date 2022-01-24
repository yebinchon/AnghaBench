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
struct TYPE_2__ {int len; int /*<<< orphan*/ * subs; } ;
struct mibifstack {TYPE_1__ index; } ;
struct mibif {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mibifstack*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mibifstack* FUNC2 (int) ; 
 int /*<<< orphan*/  mib_ifstack_last_change ; 
 int /*<<< orphan*/  mibifstack_list ; 

int
FUNC3(const struct mibif *lower, const struct mibif *upper)
{
	struct mibifstack *stack;

	if ((stack = FUNC2(sizeof(*stack))) == NULL)
		return (-1);

	stack->index.len = 2;
	stack->index.subs[0] = upper ? upper->index : 0;
	stack->index.subs[1] = lower ? lower->index : 0;

	FUNC0(stack, &mibifstack_list);

	mib_ifstack_last_change = FUNC1();

	return (0);
}