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
struct kobject {int /*<<< orphan*/ * parent; scalar_t__ state_in_sysfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 

void FUNC3(struct kobject *kobj)
{
	if (!kobj)
		return;

	FUNC2(kobj);
	kobj->state_in_sysfs = 0;
	FUNC0(kobj);
	FUNC1(kobj->parent);
	kobj->parent = NULL;
}