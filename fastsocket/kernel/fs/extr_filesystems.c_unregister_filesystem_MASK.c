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
struct file_system_type {struct file_system_type* next; } ;

/* Variables and functions */
 int EINVAL ; 
 struct file_system_type* file_systems ; 
 int /*<<< orphan*/  file_systems_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct file_system_type * fs)
{
	struct file_system_type ** tmp;

	FUNC0(&file_systems_lock);
	tmp = &file_systems;
	while (*tmp) {
		if (fs == *tmp) {
			*tmp = fs->next;
			fs->next = NULL;
			FUNC1(&file_systems_lock);
			return 0;
		}
		tmp = &(*tmp)->next;
	}
	FUNC1(&file_systems_lock);
	return -EINVAL;
}