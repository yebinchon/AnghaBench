#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {int dummy; } ;
struct page {TYPE_2__* mapping; } ;
struct inode {TYPE_3__* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_5__ {struct inode* host; } ;
struct TYPE_4__ {scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int BH_Dirty ; 
 int BH_Uptodate ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,int /*<<< orphan*/ ,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gfs2_get_block_noalloc ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*,struct page*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);

	if (FUNC3(page)) {
		FUNC0(page);
		if (!FUNC7(page)) {
			FUNC5(page, inode->i_sb->s_blocksize,
					     (1 << BH_Dirty)|(1 << BH_Uptodate));
		}
		FUNC6(ip, page, 0, sdp->sd_vfs->s_blocksize-1);
	}
	return FUNC4(page, gfs2_get_block_noalloc, wbc);
}