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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  bg_allocs; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_wanted; scalar_t__ ac_bits_given; scalar_t__ ac_which; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OCFS2_AC_USE_META ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_super*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,scalar_t__,int,scalar_t__*,unsigned int*,scalar_t__*) ; 

int FUNC5(struct ocfs2_super *osb,
			 handle_t *handle,
			 struct ocfs2_alloc_context *ac,
			 u32 bits_wanted,
			 u16 *suballoc_bit_start,
			 unsigned int *num_bits,
			 u64 *blkno_start)
{
	int status;
	u64 bg_blkno;

	FUNC0(!ac);
	FUNC0(ac->ac_bits_wanted < (ac->ac_bits_given + bits_wanted));
	FUNC0(ac->ac_which != OCFS2_AC_USE_META);

	status = FUNC4(osb,
					   ac,
					   handle,
					   bits_wanted,
					   1,
					   suballoc_bit_start,
					   num_bits,
					   &bg_blkno);
	if (status < 0) {
		FUNC2(status);
		goto bail;
	}
	FUNC1(&osb->alloc_stats.bg_allocs);

	*blkno_start = bg_blkno + (u64) *suballoc_bit_start;
	ac->ac_bits_given += (*num_bits);
	status = 0;
bail:
	FUNC3(status);
	return status;
}