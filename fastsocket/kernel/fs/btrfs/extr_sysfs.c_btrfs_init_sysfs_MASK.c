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
 int /*<<< orphan*/  btrfs_kset ; 
 int /*<<< orphan*/  fs_kobj ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(void)
{
	btrfs_kset = FUNC0("btrfs", NULL, fs_kobj);
	if (!btrfs_kset)
		return -ENOMEM;
	return 0;
}