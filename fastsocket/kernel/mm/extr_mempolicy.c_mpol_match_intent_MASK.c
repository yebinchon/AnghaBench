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
struct TYPE_2__ {int /*<<< orphan*/  user_nodemask; } ;
struct mempolicy {scalar_t__ flags; TYPE_1__ w; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mempolicy const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const struct mempolicy *a,
			     const struct mempolicy *b)
{
	if (a->flags != b->flags)
		return 0;
	if (!FUNC0(a))
		return 1;
	return FUNC1(a->w.user_nodemask, b->w.user_nodemask);
}