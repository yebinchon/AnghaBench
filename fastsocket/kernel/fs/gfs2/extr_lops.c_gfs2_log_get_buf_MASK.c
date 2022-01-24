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
struct gfs2_sbd {int /*<<< orphan*/  sd_log_in_flight; int /*<<< orphan*/  sd_vfs; int /*<<< orphan*/  sd_log_flush_head; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; struct gfs2_sbd* b_private; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  gfs2_log_write_endio ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC8(struct gfs2_sbd *sdp)
{
	u64 blkno = FUNC2(sdp, sdp->sd_log_flush_head);
	struct buffer_head *bh;

	bh = FUNC6(sdp->sd_vfs, blkno);
	FUNC4(bh);
	FUNC5(bh->b_data, 0, bh->b_size);
	FUNC7(bh);
	FUNC1(bh);
	FUNC3(sdp);
	FUNC0(&sdp->sd_log_in_flight);
	bh->b_private = sdp;
	bh->b_end_io = gfs2_log_write_endio;

	return bh;
}