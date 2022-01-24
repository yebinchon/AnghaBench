#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  sb; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_inode; struct buffer_head* j_bh; } ;
struct TYPE_3__ {int /*<<< orphan*/  ij_flags; } ;
struct TYPE_4__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_check; TYPE_2__ id1; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dinode*) ; 
 unsigned int OCFS2_JOURNAL_DIRTY_FL ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ocfs2_super *osb,
				      int dirty, int replayed)
{
	int status;
	unsigned int flags;
	struct ocfs2_journal *journal = osb->journal;
	struct buffer_head *bh = journal->j_bh;
	struct ocfs2_dinode *fe;

	FUNC5();

	fe = (struct ocfs2_dinode *)bh->b_data;

	/* The journal bh on the osb always comes from ocfs2_journal_init()
	 * and was validated there inside ocfs2_inode_lock_full().  It's a
	 * code bug if we mess it up. */
	FUNC0(!FUNC2(fe));

	flags = FUNC4(fe->id1.journal1.ij_flags);
	if (dirty)
		flags |= OCFS2_JOURNAL_DIRTY_FL;
	else
		flags &= ~OCFS2_JOURNAL_DIRTY_FL;
	fe->id1.journal1.ij_flags = FUNC3(flags);

	if (replayed)
		FUNC8(fe);

	FUNC9(osb->sb, bh->b_data, &fe->i_check);
	status = FUNC10(osb, bh, FUNC1(journal->j_inode));
	if (status < 0)
		FUNC6(status);

	FUNC7(status);
	return status;
}