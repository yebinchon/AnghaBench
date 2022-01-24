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
struct mb_cache_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_3__ {scalar_t__ h_magic; scalar_t__ h_blocks; scalar_t__ h_refcount; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT2_XATTR_MAGIC ; 
 TYPE_1__* FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__,int) ; 
 int /*<<< orphan*/  ext2_xattr_cache ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct mb_cache_entry*) ; 
 struct mb_cache_entry* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mb_cache_entry*) ; 
 struct buffer_head* FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*,int) ; 

void
FUNC24(struct inode *inode)
{
	struct buffer_head *bh = NULL;
	struct mb_cache_entry *ce;

	FUNC7(&FUNC0(inode)->xattr_sem);
	if (!FUNC0(inode)->i_file_acl)
		goto cleanup;
	bh = FUNC19(inode->i_sb, FUNC0(inode)->i_file_acl);
	if (!bh) {
		FUNC9(inode->i_sb, "ext2_xattr_delete_inode",
			"inode %ld: block %d read error", inode->i_ino,
			FUNC0(inode)->i_file_acl);
		goto cleanup;
	}
	FUNC8(bh, "b_count=%d", FUNC3(&(bh->b_count)));
	if (FUNC1(bh)->h_magic != FUNC6(EXT2_XATTR_MAGIC) ||
	    FUNC1(bh)->h_blocks != FUNC6(1)) {
		FUNC9(inode->i_sb, "ext2_xattr_delete_inode",
			"inode %ld: bad block %d", inode->i_ino,
			FUNC0(inode)->i_file_acl);
		goto cleanup;
	}
	ce = FUNC17(ext2_xattr_cache, bh->b_bdev, bh->b_blocknr);
	FUNC14(bh);
	if (FUNC1(bh)->h_refcount == FUNC6(1)) {
		if (ce)
			FUNC16(ce);
		FUNC10(inode, FUNC0(inode)->i_file_acl, 1);
		FUNC11(bh);
		FUNC4(bh);
		FUNC21(bh);
	} else {
		FUNC12(&FUNC1(bh)->h_refcount, -1);
		if (ce)
			FUNC18(ce);
		FUNC8(bh, "refcount now=%d",
			FUNC13(FUNC1(bh)->h_refcount));
		FUNC21(bh);
		FUNC15(bh);
		if (FUNC2(inode))
			FUNC20(bh);
		FUNC23(inode, 1);
	}
	FUNC0(inode)->i_file_acl = 0;

cleanup:
	FUNC5(bh);
	FUNC22(&FUNC0(inode)->xattr_sem);
}