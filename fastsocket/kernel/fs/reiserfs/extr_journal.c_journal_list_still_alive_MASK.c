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
struct super_block {int dummy; } ;
struct reiserfs_journal_list {unsigned int j_trans_id; } ;
struct list_head {int /*<<< orphan*/  next; } ;
struct reiserfs_journal {struct list_head j_journal_list; } ;

/* Variables and functions */
 struct reiserfs_journal_list* FUNC0 (int /*<<< orphan*/ ) ; 
 struct reiserfs_journal* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

__attribute__((used)) static int FUNC3(struct super_block *s,
				    unsigned int trans_id)
{
	struct reiserfs_journal *journal = FUNC1(s);
	struct list_head *entry = &journal->j_journal_list;
	struct reiserfs_journal_list *jl;

	if (!FUNC2(entry)) {
		jl = FUNC0(entry->next);
		if (jl->j_trans_id <= trans_id) {
			return 1;
		}
	}
	return 0;
}