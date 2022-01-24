#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pagevec {int /*<<< orphan*/ * pages; } ;
struct address_space {int dummy; } ;
struct nilfs_inode_info {struct address_space i_btnode_cache; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {struct buffer_head* b_this_page; int /*<<< orphan*/  b_assoc_buffers; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 struct nilfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_DIRTY ; 
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct pagevec*) ; 
 int /*<<< orphan*/  FUNC7 (struct pagevec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pagevec*,struct address_space*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pagevec*) ; 

__attribute__((used)) static void FUNC10(struct inode *inode,
					    struct list_head *listp)
{
	struct nilfs_inode_info *ii = FUNC0(inode);
	struct address_space *mapping = &ii->i_btnode_cache;
	struct pagevec pvec;
	struct buffer_head *bh, *head;
	unsigned int i;
	pgoff_t index = 0;

	FUNC7(&pvec, 0);

	while (FUNC8(&pvec, mapping, &index, PAGECACHE_TAG_DIRTY,
				  PAGEVEC_SIZE)) {
		for (i = 0; i < FUNC6(&pvec); i++) {
			bh = head = FUNC5(pvec.pages[i]);
			do {
				if (FUNC1(bh)) {
					FUNC3(bh);
					FUNC4(&bh->b_assoc_buffers,
						      listp);
				}
				bh = bh->b_this_page;
			} while (bh != head);
		}
		FUNC9(&pvec);
		FUNC2();
	}
}