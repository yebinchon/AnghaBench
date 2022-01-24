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
struct work_struct {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct work_struct*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct work_struct*) ; 

__attribute__((used)) static int FUNC6(struct work_struct *work,
				struct timer_list* timer)
{
	int ret;

	do {
		ret = (timer && FUNC1(FUNC0(timer)));
		if (!ret)
			ret = FUNC2(work);
		FUNC4(work);
	} while (FUNC3(ret < 0));

	FUNC5(work);
	return ret;
}