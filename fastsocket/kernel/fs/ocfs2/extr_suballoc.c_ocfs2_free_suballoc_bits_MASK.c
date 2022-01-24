#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_chain; int /*<<< orphan*/  bg_bits; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_used; } ;
struct TYPE_9__ {TYPE_3__ bitmap1; } ;
struct ocfs2_chain_list {TYPE_2__* cl_recs; } ;
struct TYPE_6__ {struct ocfs2_chain_list i_chain; } ;
struct ocfs2_dinode {TYPE_4__ id1; TYPE_1__ id2; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_10__ {scalar_t__ ip_blkno; } ;
struct TYPE_7__ {int /*<<< orphan*/  c_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 TYPE_5__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned int,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 unsigned int FUNC13 (struct ocfs2_chain_list*) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,unsigned int,unsigned int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC17 (struct inode*,struct ocfs2_dinode*,scalar_t__,struct buffer_head**) ; 

int FUNC18(handle_t *handle,
			     struct inode *alloc_inode,
			     struct buffer_head *alloc_bh,
			     unsigned int start_bit,
			     u64 bg_blkno,
			     unsigned int count)
{
	int status = 0;
	u32 tmp_used;
	struct ocfs2_dinode *fe = (struct ocfs2_dinode *) alloc_bh->b_data;
	struct ocfs2_chain_list *cl = &fe->id2.i_chain;
	struct buffer_head *group_bh = NULL;
	struct ocfs2_group_desc *group;

	FUNC10();

	/* The alloc_bh comes from ocfs2_free_dinode() or
	 * ocfs2_free_clusters().  The callers have all locked the
	 * allocator and gotten alloc_bh from the lock call.  This
	 * validates the dinode buffer.  Any corruption that has happended
	 * is a code bug. */
	FUNC0(!FUNC3(fe));
	FUNC0((count + start_bit) > FUNC13(cl));

	FUNC9(0, "%llu: freeing %u bits from group %llu, starting at %u\n",
	     (unsigned long long)FUNC2(alloc_inode)->ip_blkno, count,
	     (unsigned long long)bg_blkno, start_bit);

	status = FUNC17(alloc_inode, fe, bg_blkno,
					     &group_bh);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}
	group = (struct ocfs2_group_desc *) group_bh->b_data;

	FUNC0((count + start_bit) > FUNC6(group->bg_bits));

	status = FUNC14(handle, alloc_inode,
					      group, group_bh,
					      start_bit, count);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}

	status = FUNC15(handle, FUNC1(alloc_inode),
					 alloc_bh, OCFS2_JOURNAL_ACCESS_WRITE);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}

	FUNC7(&cl->cl_recs[FUNC6(group->bg_chain)].c_free,
		     count);
	tmp_used = FUNC8(fe->id1.bitmap1.i_used);
	fe->id1.bitmap1.i_used = FUNC5(tmp_used - count);

	status = FUNC16(handle, alloc_bh);
	if (status < 0) {
		FUNC11(status);
		goto bail;
	}

bail:
	FUNC4(group_bh);

	FUNC12(status);
	return status;
}