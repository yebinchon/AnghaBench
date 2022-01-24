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
struct reiserfs_journal {int /*<<< orphan*/  j_dirty_buffers_lock; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int /*<<< orphan*/ * b_bdev; int /*<<< orphan*/  b_assoc_buffers; TYPE_2__* b_page; scalar_t__ b_private; } ;
struct TYPE_4__ {TYPE_1__* mapping; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct reiserfs_journal* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 

void FUNC15(struct buffer_head *bh)
{
	FUNC10(bh);
	if (FUNC3(bh) || FUNC2(bh)) {
		FUNC0();
	}
	FUNC4(bh);
	/* Remove the buffer from whatever list it belongs to. We are mostly
	   interested in removing it from per-sb j_dirty_buffers list, to avoid
	   BUG() on attempt to write not mapped buffer */
	if ((!FUNC9(&bh->b_assoc_buffers) || bh->b_private) && bh->b_page) {
		struct inode *inode = bh->b_page->mapping->host;
		struct reiserfs_journal *j = FUNC1(inode->i_sb);
		FUNC12(&j->j_dirty_buffers_lock);
		FUNC8(&bh->b_assoc_buffers);
		FUNC11(bh);
		FUNC13(&j->j_dirty_buffers_lock);
	}
	FUNC5(bh);
	FUNC7(bh);
	FUNC6(bh);
	bh->b_bdev = NULL;
	FUNC14(bh);
}