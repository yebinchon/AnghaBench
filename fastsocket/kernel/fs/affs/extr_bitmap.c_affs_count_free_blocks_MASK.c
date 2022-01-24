#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int s_flags; } ;
struct affs_bm_info {scalar_t__ bm_free; } ;
struct TYPE_2__ {int s_bmap_count; int /*<<< orphan*/  s_bmlock; struct affs_bm_info* s_bitmap; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

u32
FUNC4(struct super_block *sb)
{
	struct affs_bm_info *bm;
	u32 free;
	int i;

	FUNC3("AFFS: count_free_blocks()\n");

	if (sb->s_flags & MS_RDONLY)
		return 0;

	FUNC1(&FUNC0(sb)->s_bmlock);

	bm = FUNC0(sb)->s_bitmap;
	free = 0;
	for (i = FUNC0(sb)->s_bmap_count; i > 0; bm++, i--)
		free += bm->bm_free;

	FUNC2(&FUNC0(sb)->s_bmlock);

	return free;
}