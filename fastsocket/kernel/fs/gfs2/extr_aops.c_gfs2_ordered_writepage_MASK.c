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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_Uptodate ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int FUNC1 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,scalar_t__,int) ; 
 int /*<<< orphan*/  gfs2_get_block_noalloc ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*,struct page*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct page*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct page *page,
				  struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC0(inode);
	int ret;

	ret = FUNC4(page, wbc);
	if (ret <= 0)
		return ret;

	if (!FUNC5(page)) {
		FUNC2(page, inode->i_sb->s_blocksize,
				     (1 << BH_Dirty)|(1 << BH_Uptodate));
	}
	FUNC3(ip, page, 0, inode->i_sb->s_blocksize-1);
	return FUNC1(page, gfs2_get_block_noalloc, wbc);
}