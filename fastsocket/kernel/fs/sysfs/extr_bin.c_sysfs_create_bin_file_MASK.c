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
struct kobject {int /*<<< orphan*/  sd; } ;
struct bin_attribute {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SYSFS_KOBJ_BIN_ATTR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct kobject * kobj, struct bin_attribute * attr)
{
	FUNC0(!kobj || !kobj->sd || !attr);

	return FUNC1(kobj->sd, &attr->attr, SYSFS_KOBJ_BIN_ATTR);
}