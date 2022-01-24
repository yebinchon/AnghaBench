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
struct btrfs_fs_devices {scalar_t__ opened; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int FUNC0 (struct btrfs_fs_devices*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uuid_mutex ; 

int FUNC3(struct btrfs_fs_devices *fs_devices,
		       fmode_t flags, void *holder)
{
	int ret;

	FUNC1(&uuid_mutex);
	if (fs_devices->opened) {
		fs_devices->opened++;
		ret = 0;
	} else {
		ret = FUNC0(fs_devices, flags, holder);
	}
	FUNC2(&uuid_mutex);
	return ret;
}