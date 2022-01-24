#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct page {TYPE_2__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  func; } ;
struct btrfs_writepage_fixup {TYPE_3__ work; struct page* page; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_8__ {struct btrfs_root* root; } ;
struct TYPE_6__ {struct inode* host; } ;
struct TYPE_5__ {int /*<<< orphan*/  fixup_workers; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  btrfs_writepage_fixup_worker ; 
 struct btrfs_writepage_fixup* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct page *page, u64 start, u64 end)
{
	struct inode *inode = page->mapping->host;
	struct btrfs_writepage_fixup *fixup;
	struct btrfs_root *root = FUNC0(inode)->root;

	/* this page is properly in the ordered list */
	if (FUNC3(page))
		return 0;

	if (FUNC1(page))
		return -EAGAIN;

	fixup = FUNC5(sizeof(*fixup), GFP_NOFS);
	if (!fixup)
		return -EAGAIN;

	FUNC2(page);
	FUNC6(page);
	fixup->work.func = btrfs_writepage_fixup_worker;
	fixup->page = page;
	FUNC4(&root->fs_info->fixup_workers, &fixup->work);
	return -EBUSY;
}