#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ h_magic; scalar_t__ h_blocks; } ;
struct TYPE_3__ {scalar_t__ i_file_acl; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int EXT4_XATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(handle_t *handle, struct inode *inode)
{
	struct buffer_head *bh = NULL;

	if (!FUNC1(inode)->i_file_acl)
		goto cleanup;
	bh = FUNC6(inode->i_sb, FUNC1(inode)->i_file_acl);
	if (!bh) {
		FUNC4(inode->i_sb, "inode %lu: block %llu read error",
			   inode->i_ino, FUNC1(inode)->i_file_acl);
		goto cleanup;
	}
	if (FUNC0(bh)->h_magic != FUNC3(EXT4_XATTR_MAGIC) ||
	    FUNC0(bh)->h_blocks != FUNC3(1)) {
		FUNC4(inode->i_sb, "inode %lu: bad block %llu",
			   inode->i_ino, FUNC1(inode)->i_file_acl);
		goto cleanup;
	}
	FUNC5(handle, inode, bh);
	FUNC1(inode)->i_file_acl = 0;

cleanup:
	FUNC2(bh);
}