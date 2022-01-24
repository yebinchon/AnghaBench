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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_stat_proc_fops ; 

int
FUNC3(void)
{
	if (!FUNC1("fs/xfs", NULL))
		goto out;

	if (!FUNC0("fs/xfs/stat", 0, NULL,
			 &xfs_stat_proc_fops))
		goto out_remove_entry;
	return 0;

 out_remove_entry:
	FUNC2("fs/xfs", NULL);
 out:
	return -ENOMEM;
}