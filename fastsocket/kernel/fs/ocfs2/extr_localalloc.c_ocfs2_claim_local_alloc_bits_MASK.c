#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_super {TYPE_3__* local_alloc_bh; } ;
struct ocfs2_local_alloc {int /*<<< orphan*/  la_bm_off; void* la_bitmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_used; } ;
struct TYPE_6__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct ocfs2_alloc_context {scalar_t__ ac_which; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_7__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ OCFS2_AC_USE_LOCAL ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_local_alloc* FUNC2 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC10 (struct ocfs2_super*,struct ocfs2_dinode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 

int FUNC12(struct ocfs2_super *osb,
				 handle_t *handle,
				 struct ocfs2_alloc_context *ac,
				 u32 bits_wanted,
				 u32 *bit_off,
				 u32 *num_bits)
{
	int status, start;
	struct inode *local_alloc_inode;
	void *bitmap;
	struct ocfs2_dinode *alloc;
	struct ocfs2_local_alloc *la;

	FUNC5();
	FUNC0(ac->ac_which != OCFS2_AC_USE_LOCAL);

	local_alloc_inode = ac->ac_inode;
	alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
	la = FUNC2(alloc);

	start = FUNC10(osb, alloc, bits_wanted);
	if (start == -1) {
		/* TODO: Shouldn't we just BUG here? */
		status = -ENOSPC;
		FUNC6(status);
		goto bail;
	}

	bitmap = la->la_bitmap;
	*bit_off = FUNC4(la->la_bm_off) + start;
	/* local alloc is always contiguous by nature -- we never
	 * delete bits from it! */
	*num_bits = bits_wanted;

	status = FUNC8(handle,
					 FUNC1(local_alloc_inode),
					 osb->local_alloc_bh,
					 OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	while(bits_wanted--)
		FUNC11(start++, bitmap);

	FUNC3(&alloc->id1.bitmap1.i_used, *num_bits);

	status = FUNC9(handle, osb->local_alloc_bh);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	status = 0;
bail:
	FUNC7(status);
	return status;
}