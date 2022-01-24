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
struct reiserfs_journal {int /*<<< orphan*/  j_dirty_buffers_lock; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {struct buffer_head* b_this_page; scalar_t__ b_private; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct reiserfs_journal* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct page *page, gfp_t unused_gfp_flags)
{
	struct inode *inode = page->mapping->host;
	struct reiserfs_journal *j = FUNC1(inode->i_sb);
	struct buffer_head *head;
	struct buffer_head *bh;
	int ret = 1;

	FUNC2(FUNC0(page));
	FUNC7(&j->j_dirty_buffers_lock);
	head = FUNC5(page);
	bh = head;
	do {
		if (bh->b_private) {
			if (!FUNC3(bh) && !FUNC4(bh)) {
				FUNC6(bh);
			} else {
				ret = 0;
				break;
			}
		}
		bh = bh->b_this_page;
	} while (bh != head);
	if (ret)
		ret = FUNC9(page);
	FUNC8(&j->j_dirty_buffers_lock);
	return ret;
}