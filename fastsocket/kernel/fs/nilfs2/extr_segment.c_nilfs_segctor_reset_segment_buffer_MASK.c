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
struct TYPE_4__ {unsigned int sumbytes; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; int /*<<< orphan*/  sb_segsum_buffers; } ;
struct TYPE_6__ {unsigned int offset; struct buffer_head* bh; } ;
struct TYPE_5__ {unsigned int offset; struct buffer_head* bh; } ;
struct nilfs_sc_info {scalar_t__ sc_datablk_cnt; scalar_t__ sc_blk_cnt; TYPE_3__ sc_binfo_ptr; TYPE_2__ sc_finfo_ptr; int /*<<< orphan*/  sc_seg_ctime; struct nilfs_segment_buffer* sc_curseg; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int NILFS_SS_GC ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct nilfs_segment_buffer*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct nilfs_sc_info *sci)
{
	struct nilfs_segment_buffer *segbuf = sci->sc_curseg;
	struct buffer_head *sumbh;
	unsigned sumbytes;
	unsigned flags = 0;
	int err;

	if (FUNC1())
		flags = NILFS_SS_GC;
	err = FUNC2(segbuf, flags, sci->sc_seg_ctime);
	if (FUNC3(err))
		return err;

	sumbh = FUNC0(&segbuf->sb_segsum_buffers);
	sumbytes = segbuf->sb_sum.sumbytes;
	sci->sc_finfo_ptr.bh = sumbh;  sci->sc_finfo_ptr.offset = sumbytes;
	sci->sc_binfo_ptr.bh = sumbh;  sci->sc_binfo_ptr.offset = sumbytes;
	sci->sc_blk_cnt = sci->sc_datablk_cnt = 0;
	return 0;
}