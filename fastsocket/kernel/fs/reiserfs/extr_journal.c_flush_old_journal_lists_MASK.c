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
typedef  int time_t ;
struct super_block {int dummy; } ;
struct reiserfs_journal_list {int j_timestamp; int /*<<< orphan*/  j_commit_left; } ;
struct TYPE_2__ {struct list_head* next; } ;
struct reiserfs_journal {TYPE_1__ j_journal_list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct reiserfs_journal_list* FUNC0 (struct list_head*) ; 
 int JOURNAL_MAX_TRANS_AGE ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct reiserfs_journal_list*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct super_block*,struct reiserfs_journal_list*) ; 

__attribute__((used)) static void FUNC7(struct super_block *s)
{
	struct reiserfs_journal *journal = FUNC1(s);
	struct reiserfs_journal_list *jl;
	struct list_head *entry;
	time_t now = FUNC4();

	while (!FUNC5(&journal->j_journal_list)) {
		entry = journal->j_journal_list.next;
		jl = FUNC0(entry);
		/* this check should always be run, to send old lists to disk */
		if (jl->j_timestamp < (now - (JOURNAL_MAX_TRANS_AGE * 4)) &&
		    FUNC2(&jl->j_commit_left) == 0 &&
		    FUNC6(s, jl)) {
			FUNC3(s, jl);
		} else {
			break;
		}
	}
}