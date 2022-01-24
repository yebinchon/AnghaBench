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
struct gfs2_trans {scalar_t__ tr_touched; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct buffer_head {int /*<<< orphan*/  b_end_io; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int BIO_RW_META ; 
 int /*<<< orphan*/  CREATE ; 
 int DIO_WAIT ; 
 int EIO ; 
 int READ_SYNC ; 
 int /*<<< orphan*/  SDF_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

int FUNC11(struct gfs2_glock *gl, u64 blkno, int flags,
		   struct buffer_head **bhp)
{
	struct gfs2_sbd *sdp = gl->gl_sbd;
	struct buffer_head *bh;

	if (FUNC8(FUNC7(SDF_SHUTDOWN, &sdp->sd_flags)))
		return -EIO;

	*bhp = bh = FUNC3(gl, blkno, CREATE);

	FUNC5(bh);
	if (FUNC1(bh)) {
		FUNC9(bh);
		return 0;
	}
	bh->b_end_io = end_buffer_read_sync;
	FUNC2(bh);
	FUNC6(READ_SYNC | (1 << BIO_RW_META), bh);
	if (!(flags & DIO_WAIT))
		return 0;

	FUNC10(bh);
	if (FUNC8(!FUNC1(bh))) {
		struct gfs2_trans *tr = current->journal_info;
		if (tr && tr->tr_touched)
			FUNC4(sdp, bh);
		FUNC0(bh);
		return -EIO;
	}

	return 0;
}