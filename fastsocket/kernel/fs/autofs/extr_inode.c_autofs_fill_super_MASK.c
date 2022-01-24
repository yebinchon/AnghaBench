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
struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; struct autofs_sb_info* s_fs_info; struct dentry* s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct file {TYPE_1__* f_op; } ;
struct dentry {int dummy; } ;
struct autofs_sb_info {int catatonic; int /*<<< orphan*/  oz_pgrp; struct file* pipe; struct super_block* sb; int /*<<< orphan*/  next_dir_ino; int /*<<< orphan*/  symlink_bitmap; int /*<<< orphan*/ * queues; int /*<<< orphan*/  dirhash; scalar_t__ exp_timeout; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFS_FIRST_DIR_INO ; 
 int AUTOFS_PROTO_VERSION ; 
 int /*<<< orphan*/  AUTOFS_ROOT_INO ; 
 int /*<<< orphan*/  AUTOFS_SBI_MAGIC ; 
 int /*<<< orphan*/  AUTOFS_SUPER_MAGIC ; 
 int AUTOFS_SYMLINK_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  autofs_sops ; 
 struct dentry* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct file* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (void*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,void*) ; 

int FUNC17(struct super_block *s, void *data, int silent)
{
	struct inode * root_inode;
	struct dentry * root;
	struct file * pipe;
	int pipefd;
	struct autofs_sb_info *sbi;
	int minproto, maxproto;
	pid_t pgid;

	FUNC16(s, data);

	sbi = FUNC11(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		goto fail_unlock;
	FUNC0(("autofs: starting up, sbi = %p\n",sbi));

	s->s_fs_info = sbi;
	sbi->magic = AUTOFS_SBI_MAGIC;
	sbi->pipe = NULL;
	sbi->catatonic = 1;
	sbi->exp_timeout = 0;
	FUNC3(&sbi->dirhash);
	sbi->queues = NULL;
	FUNC12(sbi->symlink_bitmap, 0, sizeof(long)*AUTOFS_SYMLINK_BITMAP_LEN);
	sbi->next_dir_ino = AUTOFS_FIRST_DIR_INO;
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = AUTOFS_SUPER_MAGIC;
	s->s_op = &autofs_sops;
	s->s_time_gran = 1;
	sbi->sb = s;

	root_inode = FUNC2(s, AUTOFS_ROOT_INO);
	if (FUNC1(root_inode))
		goto fail_free;
	root = FUNC4(root_inode);
	pipe = NULL;

	if (!root)
		goto fail_iput;

	/* Can this call block?  - WTF cares? s is locked. */
	if (FUNC13(data, &pipefd, &root_inode->i_uid,
				&root_inode->i_gid, &pgid, &minproto,
				&maxproto)) {
		FUNC14("autofs: called with bogus options\n");
		goto fail_dput;
	}

	/* Couldn't this be tested earlier? */
	if (minproto > AUTOFS_PROTO_VERSION ||
	     maxproto < AUTOFS_PROTO_VERSION) {
		FUNC14("autofs: kernel does not match daemon version\n");
		goto fail_dput;
	}

	FUNC0(("autofs: pipe fd = %d, pgrp = %u\n", pipefd, pgid));
	sbi->oz_pgrp = FUNC7(pgid);

	if (!sbi->oz_pgrp) {
		FUNC14("autofs: could not find process group %d\n", pgid);
		goto fail_dput;
	}

	pipe = FUNC6(pipefd);
	
	if (!pipe) {
		FUNC14("autofs: could not open pipe file descriptor\n");
		goto fail_put_pid;
	}

	if (!pipe->f_op || !pipe->f_op->write)
		goto fail_fput;
	sbi->pipe = pipe;
	sbi->catatonic = 0;

	/*
	 * Success! Install the root dentry now to indicate completion.
	 */
	s->s_root = root;
	return 0;

fail_fput:
	FUNC14("autofs: pipe file descriptor does not contain proper ops\n");
	FUNC8(pipe);
fail_put_pid:
	FUNC15(sbi->oz_pgrp);
fail_dput:
	FUNC5(root);
	goto fail_free;
fail_iput:
	FUNC14("autofs: get root dentry failed\n");
	FUNC9(root_inode);
fail_free:
	FUNC10(sbi);
	s->s_fs_info = NULL;
fail_unlock:
	return -EINVAL;
}