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
struct super_block {int dummy; } ;
struct reiserfs_journal_list {int /*<<< orphan*/  j_commit_mutex; int /*<<< orphan*/  j_bh_list; int /*<<< orphan*/  j_tail_bh_list; int /*<<< orphan*/  j_working_list; int /*<<< orphan*/  j_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  j_num_lists; } ;

/* Variables and functions */
 int GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_journal_list*) ; 
 struct reiserfs_journal_list* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct reiserfs_journal_list *FUNC5(struct super_block *s)
{
	struct reiserfs_journal_list *jl;
	jl = FUNC3(sizeof(struct reiserfs_journal_list),
		     GFP_NOFS | __GFP_NOFAIL);
	FUNC0(&jl->j_list);
	FUNC0(&jl->j_working_list);
	FUNC0(&jl->j_tail_bh_list);
	FUNC0(&jl->j_bh_list);
	FUNC4(&jl->j_commit_mutex);
	FUNC1(s)->j_num_lists++;
	FUNC2(jl);
	return jl;
}