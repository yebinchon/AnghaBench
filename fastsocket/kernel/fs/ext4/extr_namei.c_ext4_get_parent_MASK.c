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
struct qstr {char* name; int len; } ;
struct inode {int dummy; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (TYPE_1__*,struct qstr const*,struct ext4_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC8(struct dentry *child)
{
	__u32 ino;
	struct inode *inode;
	static const struct qstr dotdot = {
		.name = "..",
		.len = 2,
	};
	struct ext4_dir_entry_2 * de;
	struct buffer_head *bh;

	bh = FUNC4(child->d_inode, &dotdot, &de);
	inode = NULL;
	if (!bh)
		return FUNC0(-ENOENT);
	ino = FUNC7(de->inode);
	FUNC1(bh);

	if (!FUNC6(child->d_inode->i_sb, ino)) {
		FUNC3(child->d_inode->i_sb,
			   "bad inode number: %u", ino);
		return FUNC0(-EIO);
	}

	return FUNC2(FUNC5(child->d_inode->i_sb, ino));
}