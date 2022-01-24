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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  gfs2_block_map ; 
 scalar_t__ FUNC2 (struct gfs2_inode*) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gfs2_inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(void *file, struct page *page)
{
	struct gfs2_inode *ip = FUNC0(page->mapping->host);
	struct gfs2_sbd *sdp = FUNC1(page->mapping->host);
	int error;

	if (FUNC2(ip)) {
		error = FUNC4(ip, page);
		FUNC7(page);
	} else {
		error = FUNC3(page, gfs2_block_map);
	}

	if (FUNC6(FUNC5(SDF_SHUTDOWN, &sdp->sd_flags)))
		return -EIO;

	return error;
}