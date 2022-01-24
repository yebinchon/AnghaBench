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
typedef  int /*<<< orphan*/  u32 ;
struct rfkill {int /*<<< orphan*/  lock; int /*<<< orphan*/  state; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct rfkill* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct kobj_uevent_env *env)
{
	struct rfkill *rfkill = FUNC4(dev);
	unsigned long flags;
	u32 state;
	int error;

	error = FUNC0(env, "RFKILL_NAME=%s", rfkill->name);
	if (error)
		return error;
	error = FUNC0(env, "RFKILL_TYPE=%s",
			       FUNC1(rfkill->type));
	if (error)
		return error;
	FUNC2(&rfkill->lock, flags);
	state = rfkill->state;
	FUNC3(&rfkill->lock, flags);
	error = FUNC0(env, "RFKILL_STATE=%d",
			       FUNC5(state));
	return error;
}