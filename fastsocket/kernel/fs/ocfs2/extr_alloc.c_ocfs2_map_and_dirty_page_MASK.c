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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ *,struct inode*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  ocfs2_zero_func ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,unsigned int,unsigned int) ; 

void FUNC9(struct inode *inode, handle_t *handle,
			      unsigned int from, unsigned int to,
			      struct page *page, int zero, u64 *phys)
{
	int ret, partial = 0;

	ret = FUNC4(page, phys, inode, from, to, 0);
	if (ret)
		FUNC2(ret);

	if (zero)
		FUNC8(page, from, to);

	/*
	 * Need to set the buffers we zero'd into uptodate
	 * here if they aren't - ocfs2_map_page_blocks()
	 * might've skipped some
	 */
	ret = FUNC7(handle, FUNC6(page),
				from, to, &partial,
				ocfs2_zero_func);
	if (ret < 0)
		FUNC2(ret);
	else if (FUNC5(inode)) {
		ret = FUNC3(handle, inode);
		if (ret < 0)
			FUNC2(ret);
	}

	if (!partial)
		FUNC0(page);

	FUNC1(page);
}