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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_BADOPTVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dt_coredump ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
	static int enabled = 0;

	if (arg != NULL)
		return (FUNC1(dtp, EDT_BADOPTVAL));

	if (enabled++ || FUNC0(dt_coredump) == 0)
		return (0);

	return (FUNC1(dtp, errno));
}