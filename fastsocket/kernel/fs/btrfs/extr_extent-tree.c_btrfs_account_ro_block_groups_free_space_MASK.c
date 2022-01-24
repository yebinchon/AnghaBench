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
typedef  int /*<<< orphan*/  u64 ;
struct btrfs_space_info {int /*<<< orphan*/  lock; int /*<<< orphan*/ * block_groups; } ;

/* Variables and functions */
 int BTRFS_NR_RAID_TYPES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u64 FUNC4(struct btrfs_space_info *sinfo)
{
	int i;
	u64 free_bytes = 0;

	FUNC2(&sinfo->lock);

	for(i = 0; i < BTRFS_NR_RAID_TYPES; i++)
		if (!FUNC1(&sinfo->block_groups[i]))
			free_bytes += FUNC0(
						&sinfo->block_groups[i]);

	FUNC3(&sinfo->lock);

	return free_bytes;
}