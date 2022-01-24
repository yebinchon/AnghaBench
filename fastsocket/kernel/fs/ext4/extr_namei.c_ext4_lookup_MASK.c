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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ EXT4_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC7 (struct inode*,TYPE_1__*,struct ext4_dir_entry_2**) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode;
	struct ext4_dir_entry_2 *de;
	struct buffer_head *bh;

	if (dentry->d_name.len > EXT4_NAME_LEN)
		return FUNC1(-ENAMETOOLONG);

	bh = FUNC7(dir, &dentry->d_name, &de);
	inode = NULL;
	if (bh) {
		__u32 ino = FUNC10(de->inode);
		FUNC4(bh);
		if (!FUNC9(dir->i_sb, ino)) {
			FUNC6(dir->i_sb, "bad inode number: %u", ino);
			return FUNC1(-EIO);
		}
		inode = FUNC8(dir->i_sb, ino);
		if (FUNC11(FUNC2(inode))) {
			if (FUNC3(inode) == -ESTALE) {
				FUNC6(dir->i_sb,
						"deleted inode referenced: %u",
						ino);
				return FUNC1(-EIO);
			} else {
				return FUNC0(inode);
			}
		}
	}
	return FUNC5(inode, dentry);
}