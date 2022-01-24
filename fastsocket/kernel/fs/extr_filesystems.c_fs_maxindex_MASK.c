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
 struct file_system_type* file_systems ; 
 int /*<<< orphan*/  file_systems_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct file_system_type * tmp;
	int index;

	FUNC0(&file_systems_lock);
	for (tmp = file_systems, index = 0 ; tmp ; tmp = tmp->next, index++)
		;
	FUNC1(&file_systems_lock);
	return index;
}