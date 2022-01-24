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
struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_fs_devices*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_devices*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uuid_mutex ; 

int FUNC4(struct btrfs_fs_devices *fs_devices)
{
	struct btrfs_fs_devices *seed_devices = NULL;
	int ret;

	FUNC2(&uuid_mutex);
	ret = FUNC0(fs_devices);
	if (!fs_devices->opened) {
		seed_devices = fs_devices->seed;
		fs_devices->seed = NULL;
	}
	FUNC3(&uuid_mutex);

	while (seed_devices) {
		fs_devices = seed_devices;
		seed_devices = fs_devices->seed;
		FUNC0(fs_devices);
		FUNC1(fs_devices);
	}
	return ret;
}