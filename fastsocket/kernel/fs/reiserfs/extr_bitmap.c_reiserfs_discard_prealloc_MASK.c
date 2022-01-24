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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct reiserfs_inode_info {scalar_t__ i_prealloc_count; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct reiserfs_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct reiserfs_inode_info*) ; 

void FUNC3(struct reiserfs_transaction_handle *th,
			       struct inode *inode)
{
	struct reiserfs_inode_info *ei = FUNC1(inode);
	FUNC0(!th->t_trans_id);
	if (ei->i_prealloc_count)
		FUNC2(th, ei);
}