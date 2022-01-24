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
struct the_nilfs {int /*<<< orphan*/  ns_bdi; int /*<<< orphan*/  ns_blocksize_bits; } ;
struct super_block {int dummy; } ;
struct nilfs_mdt_info {int /*<<< orphan*/  mi_sem; struct the_nilfs* mi_nilfs; } ;
struct address_space {int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/ * assoc_mapping; scalar_t__ flags; int /*<<< orphan*/ * host; } ;
struct inode {int i_nlink; struct address_space* i_mapping; int /*<<< orphan*/  i_alloc_sem; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_lock; scalar_t__ i_state; int /*<<< orphan*/  i_sb_list; int /*<<< orphan*/  i_list; scalar_t__ dirtied_when; int /*<<< orphan*/ * i_security; scalar_t__ i_rdev; int /*<<< orphan*/ * i_cdev; int /*<<< orphan*/ * i_bdev; int /*<<< orphan*/ * i_pipe; int /*<<< orphan*/  i_dquot; scalar_t__ i_generation; scalar_t__ i_bytes; scalar_t__ i_blocks; scalar_t__ i_size; int /*<<< orphan*/  i_writecount; struct nilfs_mdt_info* i_private; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_count; scalar_t__ i_flags; int /*<<< orphan*/  i_blkbits; struct super_block* i_sb; struct address_space i_data; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_IFREG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nilfs_mdt_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct inode *
FUNC10(struct the_nilfs *nilfs, struct super_block *sb,
		     ino_t ino, gfp_t gfp_mask)
{
	struct inode *inode = FUNC7(nilfs);

	if (!inode)
		return NULL;
	else {
		struct address_space * const mapping = &inode->i_data;
		struct nilfs_mdt_info *mi = FUNC3(sizeof(*mi), GFP_NOFS);

		if (!mi) {
			FUNC8(inode);
			return NULL;
		}
		mi->mi_nilfs = nilfs;
		FUNC2(&mi->mi_sem);

		inode->i_sb = sb; /* sb may be NULL for some meta data files */
		inode->i_blkbits = nilfs->ns_blocksize_bits;
		inode->i_flags = 0;
		FUNC1(&inode->i_count, 1);
		inode->i_nlink = 1;
		inode->i_ino = ino;
		inode->i_mode = S_IFREG;
		inode->i_private = mi;

#ifdef INIT_UNUSED_INODE_FIELDS
		atomic_set(&inode->i_writecount, 0);
		inode->i_size = 0;
		inode->i_blocks = 0;
		inode->i_bytes = 0;
		inode->i_generation = 0;
#ifdef CONFIG_QUOTA
		memset(&inode->i_dquot, 0, sizeof(inode->i_dquot));
#endif
		inode->i_pipe = NULL;
		inode->i_bdev = NULL;
		inode->i_cdev = NULL;
		inode->i_rdev = 0;
#ifdef CONFIG_SECURITY
		inode->i_security = NULL;
#endif
		inode->dirtied_when = 0;

		INIT_LIST_HEAD(&inode->i_list);
		INIT_LIST_HEAD(&inode->i_sb_list);
		inode->i_state = 0;
#endif

		FUNC9(&inode->i_lock);
		FUNC6(&inode->i_mutex);
		FUNC2(&inode->i_alloc_sem);

		mapping->host = NULL;  /* instead of inode */
		mapping->flags = 0;
		FUNC4(mapping, gfp_mask);
		mapping->assoc_mapping = NULL;
		mapping->backing_dev_info = nilfs->ns_bdi;

		inode->i_mapping = mapping;
	}

	return inode;
}