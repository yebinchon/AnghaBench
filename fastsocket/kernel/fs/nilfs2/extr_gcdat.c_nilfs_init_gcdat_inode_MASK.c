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
struct the_nilfs {struct inode* ns_gc_dat; struct inode* ns_dat; } ;
struct nilfs_inode_info {int i_state; int /*<<< orphan*/  i_btnode_cache; int /*<<< orphan*/  i_bmap; scalar_t__ i_cno; int /*<<< orphan*/  i_flags; } ;
struct inode {int /*<<< orphan*/ * i_mapping; int /*<<< orphan*/  i_blocks; scalar_t__ i_state; } ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int NILFS_I_GCDAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct the_nilfs *nilfs)
{
	struct inode *dat = nilfs->ns_dat, *gcdat = nilfs->ns_gc_dat;
	struct nilfs_inode_info *dii = FUNC0(dat), *gii = FUNC0(gcdat);
	int err;

	gcdat->i_state = 0;
	gcdat->i_blocks = dat->i_blocks;
	gii->i_flags = dii->i_flags;
	gii->i_state = dii->i_state | (1 << NILFS_I_GCDAT);
	gii->i_cno = 0;
	FUNC1(gii->i_bmap, dii->i_bmap);
	err = FUNC2(gcdat->i_mapping, dat->i_mapping);
	if (FUNC3(err))
		return err;

	return FUNC2(&gii->i_btnode_cache,
				      &dii->i_btnode_cache);
}