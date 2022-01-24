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
typedef  scalar_t__ u64 ;
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__) ; 

int FUNC2(struct btrfs_block_group_cache *block_group,
			   u64 *trimmed, u64 start, u64 end, u64 minlen)
{
	int ret;

	*trimmed = 0;

	ret = FUNC1(block_group, trimmed, start, end, minlen);
	if (ret)
		return ret;

	ret = FUNC0(block_group, trimmed, start, end, minlen);

	return ret;
}