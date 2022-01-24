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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; struct hugetlbfs_sb_info* s_fs_info; } ;
struct inode {int dummy; } ;
struct hugetlbfs_sb_info {int max_inodes; int free_inodes; struct hugetlbfs_sb_info* spool; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/ * hstate; } ;
struct hugetlbfs_config {int nr_blocks; int nr_inodes; int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/ * hstate; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HUGETLBFS_MAGIC ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  default_hstate ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hugetlbfs_sb_info* FUNC5 (int) ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlbfs_ops ; 
 int FUNC7 (void*,struct hugetlbfs_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct hugetlbfs_sb_info*) ; 
 struct hugetlbfs_sb_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct super_block *sb, void *data, int silent)
{
	struct inode * inode;
	struct dentry * root;
	int ret;
	struct hugetlbfs_config config;
	struct hugetlbfs_sb_info *sbinfo;

	FUNC11(sb, data);

	config.nr_blocks = -1; /* No limit on size by default */
	config.nr_inodes = -1; /* No limit on number of inodes by default */
	config.uid = FUNC1();
	config.gid = FUNC0();
	config.mode = 0755;
	config.hstate = &default_hstate;
	ret = FUNC7(data, &config);
	if (ret)
		return ret;

	sbinfo = FUNC10(sizeof(struct hugetlbfs_sb_info), GFP_KERNEL);
	if (!sbinfo)
		return -ENOMEM;
	sb->s_fs_info = sbinfo;
	sbinfo->hstate = config.hstate;
	FUNC12(&sbinfo->stat_lock);
	sbinfo->max_inodes = config.nr_inodes;
	sbinfo->free_inodes = config.nr_inodes;
	sbinfo->spool = NULL;
	if (config.nr_blocks != -1) {
		sbinfo->spool = FUNC5(config.nr_blocks);
		if (!sbinfo->spool)
			goto out_free;
	}
	sb->s_maxbytes = MAX_LFS_FILESIZE;
	sb->s_blocksize = FUNC4(config.hstate);
	sb->s_blocksize_bits = FUNC3(config.hstate);
	sb->s_magic = HUGETLBFS_MAGIC;
	sb->s_op = &hugetlbfs_ops;
	sb->s_time_gran = 1;
	inode = FUNC6(sb, config.uid, config.gid,
					S_IFDIR | config.mode, 0);
	if (!inode)
		goto out_free;

	root = FUNC2(inode);
	if (!root) {
		FUNC8(inode);
		goto out_free;
	}
	sb->s_root = root;
	return 0;
out_free:
	if (sbinfo->spool)
		FUNC9(sbinfo->spool);
	FUNC9(sbinfo);
	return -ENOMEM;
}