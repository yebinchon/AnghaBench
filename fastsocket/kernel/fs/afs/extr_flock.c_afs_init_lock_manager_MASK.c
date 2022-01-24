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

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ afs_lock_manager ; 
 int /*<<< orphan*/  afs_lock_manager_mutex ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	ret = 0;
	if (!afs_lock_manager) {
		FUNC1(&afs_lock_manager_mutex);
		if (!afs_lock_manager) {
			afs_lock_manager =
				FUNC0("kafs_lockd");
			if (!afs_lock_manager)
				ret = -ENOMEM;
		}
		FUNC2(&afs_lock_manager_mutex);
	}
	return ret;
}