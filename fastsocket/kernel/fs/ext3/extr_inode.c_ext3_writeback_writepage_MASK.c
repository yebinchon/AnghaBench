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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  PAGE_CACHE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct page*,int /*<<< orphan*/ *,struct writeback_control*) ; 
 int /*<<< orphan*/  buffer_unmapped ; 
 int /*<<< orphan*/ * ext3_get_block ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct page*,int /*<<< orphan*/ *,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct writeback_control*,struct page*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct page *page,
				struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	handle_t *handle = NULL;
	int ret = 0;
	int err;

	if (FUNC3())
		goto out_fail;

	FUNC13(page);
	if (FUNC10(page)) {
		if (!FUNC15(NULL, FUNC9(page), 0,
				      PAGE_CACHE_SIZE, NULL, buffer_unmapped)) {
			/* Provide NULL get_block() to catch bugs if buffers
			 * weren't really mapped */
			return FUNC2(page, NULL, wbc);
		}
	}

	handle = FUNC4(inode, FUNC7(inode));
	if (FUNC0(handle)) {
		ret = FUNC1(handle);
		goto out_fail;
	}

	if (FUNC12(inode->i_sb, NOBH) && FUNC6(inode))
		ret = FUNC8(page, ext3_get_block, wbc);
	else
		ret = FUNC2(page, ext3_get_block, wbc);

	err = FUNC5(handle);
	if (!ret)
		ret = err;
	return ret;

out_fail:
	FUNC11(wbc, page);
	FUNC14(page);
	return ret;
}