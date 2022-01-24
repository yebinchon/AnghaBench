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
struct ubifs_inode {unsigned int ui_size; int /*<<< orphan*/  ui_mutex; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_pg_cnt; } ;
struct page {int /*<<< orphan*/  index; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 unsigned int PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct page*,struct ubifs_inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int,...) ; 
 unsigned int FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct ubifs_inode* FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static int FUNC16(struct file *file, struct address_space *mapping,
			   loff_t pos, unsigned len, unsigned copied,
			   struct page *page, void *fsdata)
{
	struct inode *inode = mapping->host;
	struct ubifs_inode *ui = FUNC13(inode);
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	loff_t end_pos = pos + len;
	int appending = !!(end_pos > inode->i_size);

	FUNC6("ino %lu, pos %llu, pg %lu, len %u, copied %d, i_size %lld",
		inode->i_ino, pos, page->index, len, copied, inode->i_size);

	if (FUNC14(copied < len && len == PAGE_CACHE_SIZE)) {
		/*
		 * VFS copied less data to the page that it intended and
		 * declared in its '->write_begin()' call via the @len
		 * argument. If the page was not up-to-date, and @len was
		 * @PAGE_CACHE_SIZE, the 'ubifs_write_begin()' function did
		 * not load it from the media (for optimization reasons). This
		 * means that part of the page contains garbage. So read the
		 * page now.
		 */
		FUNC6("copied %d instead of %d, read page and repeat",
			copied, len);
		FUNC5(c, page, ui, appending);

		/*
		 * Return 0 to force VFS to repeat the whole operation, or the
		 * error code if 'do_readpage()' fails.
		 */
		copied = FUNC7(page);
		goto out;
	}

	if (!FUNC0(page)) {
		FUNC1(page);
		FUNC4(&c->dirty_pg_cnt);
		FUNC3(page);
	}

	if (appending) {
		FUNC8(inode, end_pos);
		ui->ui_size = end_pos;
		/*
		 * Note, we do not set @I_DIRTY_PAGES (which means that the
		 * inode has dirty pages), this has been done in
		 * '__set_page_dirty_nobuffers()'.
		 */
		FUNC2(inode, I_DIRTY_DATASYNC);
		FUNC12(FUNC9(&ui->ui_mutex));
		FUNC10(&ui->ui_mutex);
	}

out:
	FUNC15(page);
	FUNC11(page);
	return copied;
}