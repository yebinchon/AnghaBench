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
struct kobj_attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* cluster_stack_name ; 
 int /*<<< orphan*/  ocfs2_stack_lock ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
					struct kobj_attribute *attr,
					char *buf)
{
	ssize_t ret;
	FUNC1(&ocfs2_stack_lock);
	ret = FUNC0(buf, PAGE_SIZE, "%s\n", cluster_stack_name);
	FUNC2(&ocfs2_stack_lock);

	return ret;
}