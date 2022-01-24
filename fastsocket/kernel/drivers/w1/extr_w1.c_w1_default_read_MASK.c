#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 struct w1_slave* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(struct file *filp, struct kobject *kobj,
			       struct bin_attribute *bin_attr,
			       char *buf, loff_t off, size_t count)
{
	struct w1_slave *sl = FUNC0(kobj);

	FUNC1(&sl->master->mutex);
	FUNC3(sl->master, buf, count);
	FUNC2(&sl->master->mutex);
	return count;
}