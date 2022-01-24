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
struct super_block {struct qnx4_sb_info* s_fs_info; int /*<<< orphan*/ * s_root; int /*<<< orphan*/  s_flags; scalar_t__ s_magic; int /*<<< orphan*/ * s_op; } ;
struct qnx4_super_block {int dummy; } ;
struct qnx4_sb_info {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {struct qnx4_super_block* sb; struct buffer_head* sb_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MS_RDONLY ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  QNX4_BLOCK_SIZE ; 
 int QNX4_INODES_PER_BLOCK ; 
 int QNX4_ROOT_INO ; 
 scalar_t__ QNX4_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct qnx4_sb_info*) ; 
 struct qnx4_sb_info* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (struct super_block*) ; 
 struct inode* FUNC10 (struct super_block*,int) ; 
 TYPE_1__* FUNC11 (struct super_block*) ; 
 int /*<<< orphan*/  qnx4_sops ; 
 struct buffer_head* FUNC12 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct super_block *s, void *data, int silent)
{
	struct buffer_head *bh;
	struct inode *root;
	const char *errmsg;
	struct qnx4_sb_info *qs;
	int ret = -EINVAL;

	qs = FUNC6(sizeof(struct qnx4_sb_info), GFP_KERNEL);
	if (!qs)
		return -ENOMEM;
	s->s_fs_info = qs;

	FUNC13(s, QNX4_BLOCK_SIZE);

	/* Check the superblock signature. Since the qnx4 code is
	   dangerous, we should leave as quickly as possible
	   if we don't belong here... */
	bh = FUNC12(s, 1);
	if (!bh) {
		FUNC8("qnx4: unable to read the superblock\n");
		goto outnobh;
	}
	if ( FUNC7((__le32*) bh->b_data) != QNX4_SUPER_MAGIC ) {
		if (!silent)
			FUNC8("qnx4: wrong fsid in superblock.\n");
		goto out;
	}
	s->s_op = &qnx4_sops;
	s->s_magic = QNX4_SUPER_MAGIC;
	s->s_flags |= MS_RDONLY;	/* Yup, read-only yet */
	FUNC11(s)->sb_buf = bh;
	FUNC11(s)->sb = (struct qnx4_super_block *) bh->b_data;


 	/* check before allocating dentries, inodes, .. */
	errmsg = FUNC9(s);
	if (errmsg != NULL) {
 		if (!silent)
 			FUNC8("qnx4: %s\n", errmsg);
		goto out;
	}

 	/* does root not have inode number QNX4_ROOT_INO ?? */
	root = FUNC10(s, QNX4_ROOT_INO * QNX4_INODES_PER_BLOCK);
	if (FUNC0(root)) {
 		FUNC8("qnx4: get inode failed\n");
		ret = FUNC1(root);
 		goto out;
 	}

	ret = -ENOMEM;
 	s->s_root = FUNC3(root);
 	if (s->s_root == NULL)
 		goto outi;

	FUNC2(bh);

	return 0;

      outi:
	FUNC4(root);
      out:
	FUNC2(bh);
      outnobh:
	FUNC5(qs);
	s->s_fs_info = NULL;
	return ret;
}