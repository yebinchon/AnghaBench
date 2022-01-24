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
struct kobject {int dummy; } ;
struct kobj_type {struct attribute** default_attrs; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 struct kobj_type* FUNC0 (struct kobject*) ; 
 int FUNC1 (struct kobject*,struct attribute*) ; 

__attribute__((used)) static int FUNC2(struct kobject *kobj)
{
	struct kobj_type *t = FUNC0(kobj);
	struct attribute *attr;
	int error = 0;
	int i;

	if (t && t->default_attrs) {
		for (i = 0; (attr = t->default_attrs[i]) != NULL; i++) {
			error = FUNC1(kobj, attr);
			if (error)
				break;
		}
	}
	return error;
}