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
struct delayed_work {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct delayed_work*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct delayed_work*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct delayed_work *dwork)
{
	int ret;

	/* cancel any work waiting to be queued. */
	ret = FUNC0(dwork);

	/* if there was any work waiting then we run it now and
	 * wait for it's completion */
	if (ret) {
		FUNC2(dwork, 0);
		FUNC1();
	}
	return ret;
}