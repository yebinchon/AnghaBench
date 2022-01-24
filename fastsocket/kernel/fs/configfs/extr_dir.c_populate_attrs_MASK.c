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
struct configfs_attribute {int dummy; } ;
struct config_item_type {struct configfs_attribute** ct_attrs; } ;
struct config_item {struct config_item_type* ci_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct config_item*,struct configfs_attribute*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 

__attribute__((used)) static int FUNC2(struct config_item *item)
{
	struct config_item_type *t = item->ci_type;
	struct configfs_attribute *attr;
	int error = 0;
	int i;

	if (!t)
		return -EINVAL;
	if (t->ct_attrs) {
		for (i = 0; (attr = t->ct_attrs[i]) != NULL; i++) {
			if ((error = FUNC0(item, attr)))
				break;
		}
	}

	if (error)
		FUNC1(item);

	return error;
}