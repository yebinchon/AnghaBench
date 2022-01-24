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
struct ext3_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,unsigned long) ; 
 struct buffer_head* FUNC4 (TYPE_1__*,struct qstr*,struct ext3_dir_entry_2**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 

struct dentry *FUNC8(struct dentry *child)
{
	unsigned long ino;
	struct qstr dotdot = {.name = "..", .len = 2};
	struct ext3_dir_entry_2 * de;
	struct buffer_head *bh;

	bh = FUNC4(child->d_inode, &dotdot, &de);
	if (!bh)
		return FUNC0(-ENOENT);
	ino = FUNC7(de->inode);
	FUNC1(bh);

	if (!FUNC6(child->d_inode->i_sb, ino)) {
		FUNC3(child->d_inode->i_sb, "ext3_get_parent",
			   "bad inode number: %lu", ino);
		return FUNC0(-EIO);
	}

	return FUNC2(FUNC5(child->d_inode->i_sb, ino));
}