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
struct btrfs_space_info {int /*<<< orphan*/  groups_sem; int /*<<< orphan*/ * block_groups; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct btrfs_space_info *space_info,
			       struct btrfs_block_group_cache *cache)
{
	int index = FUNC1(cache);

	FUNC0(&space_info->groups_sem);
	FUNC2(&cache->list, &space_info->block_groups[index]);
	FUNC3(&space_info->groups_sem);
}