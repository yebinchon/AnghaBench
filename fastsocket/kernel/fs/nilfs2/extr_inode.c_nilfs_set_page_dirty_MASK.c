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
struct page {TYPE_1__* mapping; } ;
struct nilfs_sb_info {int dummy; } ;
struct inode {int i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct nilfs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_sb_info*,struct inode*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct page *page)
{
	int ret = FUNC1(page);

	if (ret) {
		struct inode *inode = page->mapping->host;
		struct nilfs_sb_info *sbi = FUNC0(inode->i_sb);
		unsigned nr_dirty = 1 << (PAGE_SHIFT - inode->i_blkbits);

		FUNC2(sbi, inode, nr_dirty);
	}
	return ret;
}