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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  bg_allocs; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; } ;
struct ocfs2_alloc_context {scalar_t__ ac_bits_given; int ac_bits_wanted; scalar_t__ ac_which; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ OCFS2_AC_USE_INODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ocfs2_super*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *,int,int,scalar_t__*,unsigned int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,struct buffer_head*,struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ocfs2_alloc_context*) ; 

int FUNC8(struct ocfs2_super *osb,
			  handle_t *handle,
			  struct inode *dir,
			  struct buffer_head *parent_fe_bh,
			  struct ocfs2_alloc_context *ac,
			  u16 *suballoc_bit,
			  u64 *fe_blkno)
{
	int status;
	unsigned int num_bits;
	u64 bg_blkno;

	FUNC2();

	FUNC0(!ac);
	FUNC0(ac->ac_bits_given != 0);
	FUNC0(ac->ac_bits_wanted != 1);
	FUNC0(ac->ac_which != OCFS2_AC_USE_INODE);

	FUNC6(dir, parent_fe_bh, ac);

	status = FUNC5(osb,
					   ac,
					   handle,
					   1,
					   1,
					   suballoc_bit,
					   &num_bits,
					   &bg_blkno);
	if (status < 0) {
		FUNC3(status);
		goto bail;
	}
	FUNC1(&osb->alloc_stats.bg_allocs);

	FUNC0(num_bits != 1);

	*fe_blkno = bg_blkno + (u64) (*suballoc_bit);
	ac->ac_bits_given++;
	FUNC7(dir, ac);
	status = 0;
bail:
	FUNC4(status);
	return status;
}