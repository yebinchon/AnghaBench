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
 int EINVAL ; 
 int heartbeat ; 
 int /*<<< orphan*/  shwdt_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(int t)
{
	unsigned long flags;

	if (FUNC2(t < 1 || t > 3600)) /* arbitrary upper limit */
		return -EINVAL;

	FUNC0(&shwdt_lock, flags);
	heartbeat = t;
	FUNC1(&shwdt_lock, flags);
	return 0;
}