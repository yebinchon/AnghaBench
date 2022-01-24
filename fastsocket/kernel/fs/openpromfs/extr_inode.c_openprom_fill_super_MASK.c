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
struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;
struct op_inode_info {TYPE_1__ u; int /*<<< orphan*/  type; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  MS_NOATIME ; 
 int /*<<< orphan*/  OPENPROM_ROOT_INO ; 
 int /*<<< orphan*/  OPENPROM_SUPER_MAGIC ; 
 struct op_inode_info* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  op_inode_node ; 
 struct inode* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  openprom_sops ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct super_block *s, void *data, int silent)
{
	struct inode *root_inode;
	struct op_inode_info *oi;
	int ret;

	s->s_flags |= MS_NOATIME;
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = OPENPROM_SUPER_MAGIC;
	s->s_op = &openprom_sops;
	s->s_time_gran = 1;
	root_inode = FUNC6(s, OPENPROM_ROOT_INO);
	if (FUNC0(root_inode)) {
		ret = FUNC2(root_inode);
		goto out_no_root;
	}

	oi = FUNC1(root_inode);
	oi->type = op_inode_node;
	oi->u.node = FUNC5("/");

	s->s_root = FUNC3(root_inode);
	if (!s->s_root)
		goto out_no_root_dentry;
	return 0;

out_no_root_dentry:
	FUNC4(root_inode);
	ret = -ENOMEM;
out_no_root:
	FUNC7("openprom_fill_super: get root inode failed\n");
	return ret;
}