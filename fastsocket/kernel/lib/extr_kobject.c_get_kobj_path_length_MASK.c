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
struct kobject {struct kobject* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct kobject*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct kobject *kobj)
{
	int length = 1;
	struct kobject *parent = kobj;

	/* walk up the ancestors until we hit the one pointing to the
	 * root.
	 * Add 1 to strlen for leading '/' of each level.
	 */
	do {
		if (FUNC0(parent) == NULL)
			return 0;
		length += FUNC1(FUNC0(parent)) + 1;
		parent = parent->parent;
	} while (parent);
	return length;
}