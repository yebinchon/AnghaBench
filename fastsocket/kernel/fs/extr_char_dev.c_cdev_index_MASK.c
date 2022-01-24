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
struct inode {int /*<<< orphan*/  i_rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cdev_map ; 
 struct kobject* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 

int FUNC2(struct inode *inode)
{
	int idx;
	struct kobject *kobj;

	kobj = FUNC0(cdev_map, inode->i_rdev, &idx);
	if (!kobj)
		return -1;
	FUNC1(kobj);
	return idx;
}