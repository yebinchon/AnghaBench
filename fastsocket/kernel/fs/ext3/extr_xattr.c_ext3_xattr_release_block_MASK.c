#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mb_cache_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; int /*<<< orphan*/  b_bdev; } ;
struct TYPE_8__ {int h_sync; } ;
typedef  TYPE_1__ handle_t ;
struct TYPE_9__ {scalar_t__ h_refcount; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct inode*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_1__*,struct buffer_head*) ; 
 int FUNC7 (TYPE_1__*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext3_xattr_cache ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct mb_cache_entry*) ; 
 struct mb_cache_entry* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int) ; 

__attribute__((used)) static void
FUNC18(handle_t *handle, struct inode *inode,
			 struct buffer_head *bh)
{
	struct mb_cache_entry *ce = NULL;
	int error = 0;

	ce = FUNC14(ext3_xattr_cache, bh->b_bdev, bh->b_blocknr);
	error = FUNC7(handle, bh);
	if (error)
		 goto out;

	FUNC12(bh);

	if (FUNC0(bh)->h_refcount == FUNC2(1)) {
		FUNC3(bh, "refcount now=0; freeing");
		if (ce)
			FUNC13(ce);
		FUNC5(handle, inode, bh->b_blocknr, 1);
		FUNC9(bh);
		FUNC4(handle, 1, inode, bh, bh->b_blocknr);
	} else {
		FUNC10(&FUNC0(bh)->h_refcount, -1);
		error = FUNC6(handle, bh);
		if (FUNC1(inode))
			handle->h_sync = 1;
		FUNC17(inode, 1);
		FUNC3(bh, "refcount now=%d; releasing",
			  FUNC11(FUNC0(bh)->h_refcount));
		if (ce)
			FUNC15(ce);
	}
	FUNC16(bh);
out:
	FUNC8(inode->i_sb, error);
	return;
}