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
struct ocfs2_super {int /*<<< orphan*/  checkpoint_event; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int /*<<< orphan*/  j_num_trans; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_KTHREAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	int status;
	struct ocfs2_super *osb = arg;
	struct ocfs2_journal *journal = osb->journal;

	/* we can trust j_num_trans here because _should_stop() is only set in
	 * shutdown and nobody other than ourselves should be able to start
	 * transactions.  committing on shutdown might take a few iterations
	 * as final transactions put deleted inodes on the list */
	while (!(FUNC1() &&
		 FUNC0(&journal->j_num_trans) == 0)) {

		FUNC5(osb->checkpoint_event,
					 FUNC0(&journal->j_num_trans)
					 || FUNC1());

		status = FUNC4(osb);
		if (status < 0)
			FUNC3(status);

		if (FUNC1() && FUNC0(&journal->j_num_trans)){
			FUNC2(ML_KTHREAD,
			     "commit_thread: %u transactions pending on "
			     "shutdown\n",
			     FUNC0(&journal->j_num_trans));
		}
	}

	return 0;
}