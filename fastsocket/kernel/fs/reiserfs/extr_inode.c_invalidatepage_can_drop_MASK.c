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
struct reiserfs_journal_list {int dummy; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_dirty_buffers_lock; struct reiserfs_journal_list* j_current_jl; } ;
struct reiserfs_jh {struct reiserfs_journal_list* jl; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {struct reiserfs_jh* b_private; } ;

/* Variables and functions */
 struct reiserfs_journal* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct buffer_head *bh)
{
	int ret = 1;
	struct reiserfs_journal *j = FUNC0(inode->i_sb);

	FUNC5(bh);
	FUNC8(&j->j_dirty_buffers_lock);
	if (!FUNC4(bh)) {
		goto free_jh;
	}
	/* the page is locked, and the only places that log a data buffer
	 * also lock the page.
	 */
	if (FUNC6(inode)) {
		/*
		 * very conservative, leave the buffer pinned if
		 * anyone might need it.
		 */
		if (FUNC3(bh) || FUNC2(bh)) {
			ret = 0;
		}
	} else  if (FUNC1(bh)) {
		struct reiserfs_journal_list *jl;
		struct reiserfs_jh *jh = bh->b_private;

		/* why is this safe?
		 * reiserfs_setattr updates i_size in the on disk
		 * stat data before allowing vmtruncate to be called.
		 *
		 * If buffer was put onto the ordered list for this
		 * transaction, we know for sure either this transaction
		 * or an older one already has updated i_size on disk,
		 * and this ordered data won't be referenced in the file
		 * if we crash.
		 *
		 * if the buffer was put onto the ordered list for an older
		 * transaction, we need to leave it around
		 */
		if (jh && (jl = jh->jl)
		    && jl != FUNC0(inode->i_sb)->j_current_jl)
			ret = 0;
	}
      free_jh:
	if (ret && bh->b_private) {
		FUNC7(bh);
	}
	FUNC9(&j->j_dirty_buffers_lock);
	FUNC10(bh);
	return ret;
}