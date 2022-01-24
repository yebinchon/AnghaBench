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
struct rfkill {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 unsigned long RFKILL_USER_STATE_SOFT_BLOCKED ; 
 unsigned long RFKILL_USER_STATE_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rfkill_global_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*,int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct rfkill* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct rfkill *rfkill = FUNC5(dev);
	unsigned long state;
	int err;

	if (!FUNC0(CAP_NET_ADMIN))
		return -EPERM;

	err = FUNC4(buf, 0, &state);
	if (err)
		return err;

	if (state != RFKILL_USER_STATE_SOFT_BLOCKED &&
	    state != RFKILL_USER_STATE_UNBLOCKED)
		return -EINVAL;

	FUNC1(&rfkill_global_mutex);
	FUNC3(rfkill, state == RFKILL_USER_STATE_SOFT_BLOCKED);
	FUNC2(&rfkill_global_mutex);

	return err ?: count;
}