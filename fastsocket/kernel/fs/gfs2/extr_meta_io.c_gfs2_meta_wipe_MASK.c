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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  journal_info; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_CREATE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 TYPE_1__* current ; 
 struct buffer_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

void FUNC8(struct gfs2_inode *ip, u64 bstart, u32 blen)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct buffer_head *bh;

	while (blen) {
		bh = FUNC2(ip->i_gl, bstart, NO_CREATE);
		if (bh) {
			FUNC6(bh);
			FUNC3(sdp);
			FUNC5(bh, current->journal_info, 1);
			FUNC4(sdp);
			FUNC7(bh);
			FUNC1(bh);
		}

		bstart++;
		blen--;
	}
}