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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	ret = FUNC3();
	if (ret)
		goto out;

	ret = FUNC2();
	if (ret)
		goto err_iw_init;

	ret = FUNC0();
	if (ret)
		goto err_ib_init;

	goto out;

err_ib_init:
	FUNC1();
err_iw_init:
	FUNC4();
out:
	return ret;
}