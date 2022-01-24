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
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

int FUNC5(void)
{
	static DEFINE_MUTEX(rpcb_create_local_mutex);
	int result = 0;

	if (FUNC4())
		return result;

	FUNC0(&rpcb_create_local_mutex);
	if (FUNC4())
		goto out;

	if (FUNC3() != 0)
		result = FUNC2();

out:
	FUNC1(&rpcb_create_local_mutex);
	return result;
}