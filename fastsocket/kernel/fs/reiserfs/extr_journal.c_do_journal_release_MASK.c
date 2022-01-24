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
struct super_block {int s_flags; } ;
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct reiserfs_journal {int /*<<< orphan*/  j_work; } ;
typedef  int /*<<< orphan*/  myth ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FLUSH_ALL ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_journal* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * commit_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,struct super_block*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_transaction_handle*,struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  reiserfs_mounted_fs_count ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct reiserfs_transaction_handle *th,
			      struct super_block *sb, int error)
{
	struct reiserfs_transaction_handle myth;
	int flushed = 0;
	struct reiserfs_journal *journal = FUNC2(sb);

	/* we only want to flush out transactions if we were called with error == 0
	 */
	if (!error && !(sb->s_flags & MS_RDONLY)) {
		/* end the current trans */
		FUNC0(!th->t_trans_id);
		FUNC5(th, sb, 10, FLUSH_ALL);

		/* make sure something gets logged to force our way into the flush code */
		if (!FUNC8(&myth, sb, 1)) {
			FUNC13(sb,
						     FUNC1(sb),
						     1);
			FUNC10(&myth, sb,
					   FUNC1(sb));
			FUNC5(&myth, sb, 1, FLUSH_ALL);
			flushed = 1;
		}
	}

	/* this also catches errors during the do_journal_end above */
	if (!error && FUNC12(journal)) {
		FUNC11(&myth, 0, sizeof(myth));
		if (!FUNC9(&myth, sb, 1)) {
			FUNC13(sb,
						     FUNC1(sb),
						     1);
			FUNC10(&myth, sb,
					   FUNC1(sb));
			FUNC5(&myth, sb, 1, FLUSH_ALL);
		}
	}

	reiserfs_mounted_fs_count--;
	/* wait for all commits to finish */
	FUNC3(&FUNC2(sb)->j_work);
	FUNC6(commit_wq);
	if (!reiserfs_mounted_fs_count) {
		FUNC4(commit_wq);
		commit_wq = NULL;
	}

	FUNC7(sb);

	return 0;
}