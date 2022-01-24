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
struct super_block {int s_flags; int s_blocksize; int s_blocksize_bits; int s_time_gran; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {scalar_t__ i_gid; scalar_t__ i_uid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MS_NODIRATIME ; 
 int MS_NOEXEC ; 
 int MS_NOSUID ; 
 int /*<<< orphan*/  PROC_ROOT_INO ; 
 int /*<<< orphan*/  PROC_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct inode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_root ; 
 int /*<<< orphan*/  proc_sops ; 

int FUNC6(struct super_block *s)
{
	struct inode * root_inode;

	s->s_flags |= MS_NODIRATIME | MS_NOSUID | MS_NOEXEC;
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = PROC_SUPER_MAGIC;
	s->s_op = &proc_sops;
	s->s_time_gran = 1;
	
	FUNC1(&proc_root);
	root_inode = FUNC5(s, PROC_ROOT_INO, &proc_root);
	if (!root_inode)
		goto out_no_root;
	root_inode->i_uid = 0;
	root_inode->i_gid = 0;
	s->s_root = FUNC0(root_inode);
	if (!s->s_root)
		goto out_no_root;
	return 0;

out_no_root:
	FUNC4("proc_read_super: get root inode failed\n");
	FUNC3(root_inode);
	FUNC2(&proc_root);
	return -ENOMEM;
}