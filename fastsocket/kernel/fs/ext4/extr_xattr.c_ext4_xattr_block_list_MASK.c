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
struct buffer_head {int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_file_acl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct buffer_head*) ; 
 int EIO ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct inode *inode, char *buffer, size_t buffer_size)
{
	struct buffer_head *bh = NULL;
	int error;

	FUNC6(inode, "buffer=%p, buffer_size=%ld",
		  buffer, (long)buffer_size);

	error = 0;
	if (!FUNC2(inode)->i_file_acl)
		goto cleanup;
	FUNC6(inode, "reading block %u", FUNC2(inode)->i_file_acl);
	bh = FUNC12(inode->i_sb, FUNC2(inode)->i_file_acl);
	error = -EIO;
	if (!bh)
		goto cleanup;
	FUNC5(bh, "b_count=%d, refcount=%d",
		FUNC3(&(bh->b_count)), FUNC11(FUNC1(bh)->h_refcount));
	if (FUNC9(bh)) {
		FUNC7(inode->i_sb,
			   "inode %lu: bad block %llu", inode->i_ino,
			   FUNC2(inode)->i_file_acl);
		error = -EIO;
		goto cleanup;
	}
	FUNC8(bh);
	error = FUNC10(inode, FUNC0(bh), buffer, buffer_size);

cleanup:
	FUNC4(bh);

	return error;
}