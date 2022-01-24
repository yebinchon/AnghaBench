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
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct file {TYPE_1__* f_op; } ;
struct dentry {struct autofs_sb_info* d_fsdata; int /*<<< orphan*/ * d_op; } ;
struct autofs_sb_info {int pipefd; int catatonic; scalar_t__ version; scalar_t__ min_proto; scalar_t__ max_proto; struct file* pipe; int /*<<< orphan*/  oz_pgrp; scalar_t__ sub_version; int /*<<< orphan*/  type; int /*<<< orphan*/  expiring_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lookup_lock; int /*<<< orphan*/ * queues; int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  pipe_mutex; int /*<<< orphan*/  wq_mutex; struct super_block* sb; scalar_t__ exp_timeout; int /*<<< orphan*/  magic; } ;
struct autofs_info {int pipefd; int catatonic; scalar_t__ version; scalar_t__ min_proto; scalar_t__ max_proto; struct file* pipe; int /*<<< orphan*/  oz_pgrp; scalar_t__ sub_version; int /*<<< orphan*/  type; int /*<<< orphan*/  expiring_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lookup_lock; int /*<<< orphan*/ * queues; int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  pipe_mutex; int /*<<< orphan*/  wq_mutex; struct super_block* sb; scalar_t__ exp_timeout; int /*<<< orphan*/  magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  write; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_MAX_PROTO_VERSION ; 
 scalar_t__ AUTOFS_MIN_PROTO_VERSION ; 
 scalar_t__ AUTOFS_PROTO_SUBVERSION ; 
 int /*<<< orphan*/  AUTOFS_SBI_MAGIC ; 
 int /*<<< orphan*/  AUTOFS_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  autofs4_dentry_operations ; 
 int /*<<< orphan*/  autofs4_dir_inode_operations ; 
 struct inode* FUNC3 (struct super_block*,struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC4 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  autofs4_root_operations ; 
 int /*<<< orphan*/  autofs4_sops ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct dentry* FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct file* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct file*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (void*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(struct super_block *s, void *data, int silent)
{
	struct inode * root_inode;
	struct dentry * root;
	struct file * pipe;
	int pipefd;
	struct autofs_sb_info *sbi;
	struct autofs_info *ino;

	sbi = FUNC12(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		goto fail_unlock;
	FUNC0("starting up, sbi = %p",sbi);

	s->s_fs_info = sbi;
	sbi->magic = AUTOFS_SBI_MAGIC;
	sbi->pipefd = -1;
	sbi->pipe = NULL;
	sbi->catatonic = 1;
	sbi->exp_timeout = 0;
	sbi->oz_pgrp = FUNC18(current);
	sbi->sb = s;
	sbi->version = 0;
	sbi->sub_version = 0;
	FUNC16(&sbi->type);
	sbi->min_proto = 0;
	sbi->max_proto = 0;
	FUNC13(&sbi->wq_mutex);
	FUNC13(&sbi->pipe_mutex);
	FUNC17(&sbi->fs_lock);
	sbi->queues = NULL;
	FUNC17(&sbi->lookup_lock);
	FUNC1(&sbi->active_list);
	FUNC1(&sbi->expiring_list);
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = AUTOFS_SUPER_MAGIC;
	s->s_op = &autofs4_sops;
	s->s_time_gran = 1;

	/*
	 * Get the root inode and dentry, but defer checking for errors.
	 */
	ino = FUNC4(sbi);
	if (!ino)
		goto fail_free;
	root_inode = FUNC3(s, ino);
	if (!root_inode)
		goto fail_ino;

	root = FUNC6(root_inode);
	if (!root)
		goto fail_iput;
	pipe = NULL;

	root->d_op = &autofs4_dentry_operations;
	root->d_fsdata = ino;

	/* Can this call block? */
	if (FUNC14(data, &pipefd, &root_inode->i_uid, &root_inode->i_gid,
				&sbi->oz_pgrp, &sbi->type, &sbi->min_proto,
				&sbi->max_proto)) {
		FUNC15("autofs: called with bogus options\n");
		goto fail_dput;
	}

	if (FUNC5(sbi->type))
		FUNC2(root);

	root_inode->i_fop = &autofs4_root_operations;
	root_inode->i_op = &autofs4_dir_inode_operations;

	/* Couldn't this be tested earlier? */
	if (sbi->max_proto < AUTOFS_MIN_PROTO_VERSION ||
	    sbi->min_proto > AUTOFS_MAX_PROTO_VERSION) {
		FUNC15("autofs: kernel does not match daemon version "
		       "daemon (%d, %d) kernel (%d, %d)\n",
			sbi->min_proto, sbi->max_proto,
			AUTOFS_MIN_PROTO_VERSION, AUTOFS_MAX_PROTO_VERSION);
		goto fail_dput;
	}

	/* Establish highest kernel protocol version */
	if (sbi->max_proto > AUTOFS_MAX_PROTO_VERSION)
		sbi->version = AUTOFS_MAX_PROTO_VERSION;
	else
		sbi->version = sbi->max_proto;
	sbi->sub_version = AUTOFS_PROTO_SUBVERSION;

	FUNC0("pipe fd = %d, pgrp = %u", pipefd, sbi->oz_pgrp);
	pipe = FUNC8(pipefd);
	
	if (!pipe) {
		FUNC15("autofs: could not open pipe file descriptor\n");
		goto fail_dput;
	}
	if (!pipe->f_op || !pipe->f_op->write)
		goto fail_fput;
	sbi->pipe = pipe;
	sbi->pipefd = pipefd;
	sbi->catatonic = 0;

	/*
	 * Success! Install the root dentry now to indicate completion.
	 */
	s->s_root = root;
	return 0;
	
	/*
	 * Failure ... clean up.
	 */
fail_fput:
	FUNC15("autofs: pipe file descriptor does not contain proper ops\n");
	FUNC9(pipe);
	/* fall through */
fail_dput:
	FUNC7(root);
	goto fail_free;
fail_iput:
	FUNC15("autofs: get root dentry failed\n");
	FUNC10(root_inode);
fail_ino:
	FUNC11(ino);
fail_free:
	FUNC11(sbi);
	s->s_fs_info = NULL;
fail_unlock:
	return -EINVAL;
}