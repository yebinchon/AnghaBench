#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct requirement_list {int /*<<< orphan*/  list; int /*<<< orphan*/  name; scalar_t__ value; } ;
typedef  scalar_t__ s32 ;
struct TYPE_3__ {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {TYPE_1__ requirements; scalar_t__ default_value; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PM_QOS_DEFAULT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct requirement_list*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct requirement_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__** pm_qos_array ; 
 int /*<<< orphan*/  pm_qos_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(int pm_qos_class, char *name, s32 value)
{
	struct requirement_list *dep;
	unsigned long flags;

	dep = FUNC2(sizeof(struct requirement_list), GFP_KERNEL);
	if (dep) {
		if (value == PM_QOS_DEFAULT_VALUE)
			dep->value = pm_qos_array[pm_qos_class]->default_value;
		else
			dep->value = value;
		dep->name = FUNC1(name, GFP_KERNEL);
		if (!dep->name)
			goto cleanup;

		FUNC4(&pm_qos_lock, flags);
		FUNC3(&dep->list,
			&pm_qos_array[pm_qos_class]->requirements.list);
		FUNC5(&pm_qos_lock, flags);
		FUNC6(pm_qos_class);

		return 0;
	}

cleanup:
	FUNC0(dep);
	return -ENOMEM;
}