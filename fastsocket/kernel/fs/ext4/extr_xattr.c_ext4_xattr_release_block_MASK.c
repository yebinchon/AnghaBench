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
struct mb_cache_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {scalar_t__ h_refcount; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  EXT4_FREE_BLOCKS_METADATA ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext4_xattr_cache ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct mb_cache_entry*) ; 
 struct mb_cache_entry* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int) ; 

__attribute__((used)) static void
FUNC19(handle_t *handle, struct inode *inode,
			 struct buffer_head *bh)
{
	struct mb_cache_entry *ce = NULL;
	int error = 0;

	ce = FUNC15(ext4_xattr_cache, bh->b_bdev, bh->b_blocknr);
	error = FUNC8(handle, bh);
	if (error)
		goto out;

	FUNC13(bh);
	if (FUNC0(bh)->h_refcount == FUNC2(1)) {
		FUNC3(bh, "refcount now=0; freeing");
		if (ce)
			FUNC14(ce);
		FUNC5(handle, inode, bh->b_blocknr, 1,
				 EXT4_FREE_BLOCKS_METADATA);
		FUNC10(bh);
		FUNC4(handle, 1, inode, bh, bh->b_blocknr);
	} else {
		FUNC11(&FUNC0(bh)->h_refcount, -1);
		error = FUNC6(handle, inode, bh);
		if (FUNC1(inode))
			FUNC7(handle);
		FUNC18(inode, 1);
		FUNC3(bh, "refcount now=%d; releasing",
			  FUNC12(FUNC0(bh)->h_refcount));
		if (ce)
			FUNC16(ce);
	}
	FUNC17(bh);
out:
	FUNC9(inode->i_sb, error);
	return;
}