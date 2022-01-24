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
struct reiserfs_journal_list {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int i_trans_id; struct reiserfs_journal_list* i_jl; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,unsigned int,struct reiserfs_journal_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

int FUNC3(struct inode *inode)
{
	unsigned int id = FUNC0(inode)->i_trans_id;
	struct reiserfs_journal_list *jl = FUNC0(inode)->i_jl;

	/* for the whole inode, assume unset id means it was
	 * changed in the current transaction.  More conservative
	 */
	if (!id || !jl) {
		FUNC2(inode);
		id = FUNC0(inode)->i_trans_id;
		/* jl will be updated in __commit_trans_jl */
	}

	return FUNC1(inode, id, jl);
}