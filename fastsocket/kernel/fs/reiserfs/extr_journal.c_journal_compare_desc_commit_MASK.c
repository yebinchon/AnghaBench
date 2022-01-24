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
struct reiserfs_journal_desc {int dummy; } ;
struct reiserfs_journal_commit {int dummy; } ;
struct TYPE_2__ {scalar_t__ j_trans_max; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FUNC1 (struct reiserfs_journal_commit*) ; 
 scalar_t__ FUNC2 (struct reiserfs_journal_commit*) ; 
 scalar_t__ FUNC3 (struct reiserfs_journal_desc*) ; 
 scalar_t__ FUNC4 (struct reiserfs_journal_desc*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
				       struct reiserfs_journal_desc *desc,
				       struct reiserfs_journal_commit *commit)
{
	if (FUNC1(commit) != FUNC3(desc) ||
	    FUNC2(commit) != FUNC4(desc) ||
	    FUNC2(commit) > FUNC0(sb)->j_trans_max ||
	    FUNC2(commit) <= 0) {
		return 1;
	}
	return 0;
}