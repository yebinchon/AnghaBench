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
struct ubifs_inode {int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {scalar_t__ nospace_rp; scalar_t__ nospace; } ;
struct ubifs_budget_req {int dirtied_page; int dirtied_ino; int /*<<< orphan*/  dirtied_ino_d; } ;
struct page {int dummy; } ;
struct inode {int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_ino; } ;
struct iattr {int ia_size; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int ENOSPC ; 
 int PAGE_CACHE_SHIFT ; 
 int PAGE_CACHE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ UBIFS_BLOCKS_PER_PAGE_SHIFT ; 
 int UBIFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  UBIFS_TRUN_NODE_SZ ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct iattr const*) ; 
 int FUNC5 (struct page*,int) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_budget_req*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 struct ubifs_inode* FUNC15 (struct inode*) ; 
 int FUNC16 (struct ubifs_info*,struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ubifs_info*,struct ubifs_budget_req*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int FUNC19 (struct inode*,int) ; 

__attribute__((used)) static int FUNC20(struct ubifs_info *c, struct inode *inode,
			 const struct iattr *attr)
{
	int err;
	struct ubifs_budget_req req;
	loff_t old_size = inode->i_size, new_size = attr->ia_size;
	int offset = new_size & (UBIFS_BLOCK_SIZE - 1), budgeted = 1;
	struct ubifs_inode *ui = FUNC15(inode);

	FUNC3("ino %lu, size %lld -> %lld", inode->i_ino, old_size, new_size);
	FUNC7(&req, 0, sizeof(struct ubifs_budget_req));

	/*
	 * If this is truncation to a smaller size, and we do not truncate on a
	 * block boundary, budget for changing one data block, because the last
	 * block will be re-written.
	 */
	if (new_size & (UBIFS_BLOCK_SIZE - 1))
		req.dirtied_page = 1;

	req.dirtied_ino = 1;
	/* A funny way to budget for truncation node */
	req.dirtied_ino_d = UBIFS_TRUN_NODE_SZ;
	err = FUNC13(c, &req);
	if (err) {
		/*
		 * Treat truncations to zero as deletion and always allow them,
		 * just like we do for '->unlink()'.
		 */
		if (new_size || err != -ENOSPC)
			return err;
		budgeted = 0;
	}

	err = FUNC19(inode, new_size);
	if (err)
		goto out_budg;

	if (offset) {
		pgoff_t index = new_size >> PAGE_CACHE_SHIFT;
		struct page *page;

		page = FUNC6(inode->i_mapping, index);
		if (page) {
			if (FUNC0(page)) {
				/*
				 * 'ubifs_jnl_truncate()' will try to truncate
				 * the last data node, but it contains
				 * out-of-date data because the page is dirty.
				 * Write the page now, so that
				 * 'ubifs_jnl_truncate()' will see an already
				 * truncated (and up to date) data node.
				 */
				FUNC12(FUNC1(page));

				FUNC2(page);
				if (UBIFS_BLOCKS_PER_PAGE_SHIFT)
					offset = new_size &
						 (PAGE_CACHE_SIZE - 1);
				err = FUNC5(page, offset);
				FUNC10(page);
				if (err)
					goto out_budg;
				/*
				 * We could now tell 'ubifs_jnl_truncate()' not
				 * to read the last block.
				 */
			} else {
				/*
				 * We could 'kmap()' the page and pass the data
				 * to 'ubifs_jnl_truncate()' to save it from
				 * having to read it.
				 */
				FUNC18(page);
				FUNC10(page);
			}
		}
	}

	FUNC8(&ui->ui_mutex);
	ui->ui_size = inode->i_size;
	/* Truncation changes inode [mc]time */
	inode->i_mtime = inode->i_ctime = FUNC14(inode);
	/* Other attributes may be changed at the same time as well */
	FUNC4(inode, attr);
	err = FUNC16(c, inode, old_size, new_size);
	FUNC9(&ui->ui_mutex);

out_budg:
	if (budgeted)
		FUNC17(c, &req);
	else {
		c->nospace = c->nospace_rp = 0;
		FUNC11();
	}
	return err;
}