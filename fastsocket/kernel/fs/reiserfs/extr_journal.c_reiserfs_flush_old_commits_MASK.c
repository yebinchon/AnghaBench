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
typedef  scalar_t__ time_t ;
struct super_block {int s_dirt; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_journal {scalar_t__ j_trans_start_time; scalar_t__ j_len; scalar_t__ j_max_trans_age; int /*<<< orphan*/  j_wcount; int /*<<< orphan*/  j_journal_list; } ;

/* Variables and functions */
 int COMMIT_NOW ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 int WAIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct reiserfs_transaction_handle*,struct super_block*,int,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_transaction_handle*,struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct super_block *sb)
{
	time_t now;
	struct reiserfs_transaction_handle th;
	struct reiserfs_journal *journal = FUNC1(sb);

	now = FUNC4();
	/* safety check so we don't flush while we are replaying the log during
	 * mount
	 */
	if (FUNC7(&journal->j_journal_list)) {
		return 0;
	}

	/* check the current transaction.  If there are no writers, and it is
	 * too old, finish it, and force the commit blocks to disk
	 */
	if (FUNC2(&journal->j_wcount) <= 0 &&
	    journal->j_trans_start_time > 0 &&
	    journal->j_len > 0 &&
	    (now - journal->j_trans_start_time) > journal->j_max_trans_age) {
		if (!FUNC5(&th, sb, 1)) {
			FUNC8(sb,
						     FUNC0(sb),
						     1);
			FUNC6(&th, sb,
					   FUNC0(sb));

			/* we're only being called from kreiserfsd, it makes no sense to do
			 ** an async commit so that kreiserfsd can do it later
			 */
			FUNC3(&th, sb, 1, COMMIT_NOW | WAIT);
		}
	}
	return sb->s_dirt;
}