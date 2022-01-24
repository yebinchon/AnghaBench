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
struct page {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 struct buffer_head* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC4(struct gfs2_inode *ip, struct page *page,
				   unsigned int from, unsigned int to)
{
	struct buffer_head *head = FUNC2(page);
	unsigned int bsize = head->b_size;
	struct buffer_head *bh;
	unsigned int start, end;

	for (bh = head, start = 0; bh != head || !start;
	     bh = bh->b_this_page, start = end) {
		end = start + bsize;
		if (end <= from || start >= to)
			continue;
		if (FUNC0(ip))
			FUNC3(bh);
		FUNC1(ip->i_gl, bh);
	}
}