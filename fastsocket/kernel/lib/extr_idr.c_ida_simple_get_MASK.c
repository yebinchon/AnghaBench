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
struct ida {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int FUNC1 (struct ida*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ida*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ida*,int) ; 
 int /*<<< orphan*/  simple_ida_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ida *ida, unsigned int start, unsigned int end,
		   gfp_t gfp_mask)
{
	int ret, id;
	unsigned int max;

	FUNC0((int)start < 0);
	FUNC0((int)end < 0);

	if (end == 0)
		max = 0x80000000;
	else {
		FUNC0(end < start);
		max = end - 1;
	}

again:
	if (!FUNC2(ida, gfp_mask))
		return -ENOMEM;

	FUNC4(&simple_ida_lock);
	ret = FUNC1(ida, start, &id);
	if (!ret) {
		if (id > max) {
			FUNC3(ida, id);
			ret = -ENOSPC;
		} else {
			ret = id;
		}
	}
	FUNC5(&simple_ida_lock);

	if (FUNC6(ret == -EAGAIN))
		goto again;

	return ret;
}