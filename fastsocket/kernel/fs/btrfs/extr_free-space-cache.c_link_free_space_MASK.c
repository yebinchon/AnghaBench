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
struct btrfs_free_space_ctl {int /*<<< orphan*/  free_extents; int /*<<< orphan*/  free_space; int /*<<< orphan*/  free_space_offset; } ;
struct btrfs_free_space {scalar_t__ bytes; int /*<<< orphan*/ * bitmap; int /*<<< orphan*/  offset_index; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct btrfs_free_space_ctl *ctl,
			   struct btrfs_free_space *info)
{
	int ret = 0;

	FUNC0(!info->bitmap && !info->bytes);
	ret = FUNC1(&ctl->free_space_offset, info->offset,
				 &info->offset_index, (info->bitmap != NULL));
	if (ret)
		return ret;

	ctl->free_space += info->bytes;
	ctl->free_extents++;
	return ret;
}