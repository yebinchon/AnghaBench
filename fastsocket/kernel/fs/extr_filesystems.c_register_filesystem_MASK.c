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
struct file_system_type {int /*<<< orphan*/  name; int /*<<< orphan*/  fs_supers; scalar_t__ next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  file_systems_lock ; 
 struct file_system_type** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct file_system_type * fs)
{
	int res = 0;
	struct file_system_type ** p;

	FUNC0(FUNC3(fs->name, '.'));
	if (fs->next)
		return -EBUSY;
	FUNC1(&fs->fs_supers);
	FUNC5(&file_systems_lock);
	p = FUNC2(fs->name, FUNC4(fs->name));
	if (*p)
		res = -EBUSY;
	else
		*p = fs;
	FUNC6(&file_systems_lock);
	return res;
}