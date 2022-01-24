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
typedef  union nilfs_bmap_union {int dummy; } nilfs_bmap_union ;
struct nilfs_bmap {int /*<<< orphan*/ * b_inode; int /*<<< orphan*/  b_sem; } ;
struct TYPE_2__ {int /*<<< orphan*/  vfs_inode; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_bmap*,struct nilfs_bmap*,int) ; 
 int /*<<< orphan*/  nilfs_bmap_dat_lock_key ; 

void FUNC4(struct nilfs_bmap *gcbmap, struct nilfs_bmap *bmap)
{
	FUNC3(bmap, gcbmap, sizeof(union nilfs_bmap_union));
	FUNC1(&bmap->b_sem);
	FUNC2(&bmap->b_sem, &nilfs_bmap_dat_lock_key);
	bmap->b_inode = &FUNC0(bmap)->vfs_inode;
}