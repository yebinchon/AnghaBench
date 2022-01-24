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
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_super; int /*<<< orphan*/  t_trans_id; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  b_blocknr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct reiserfs_transaction_handle *th,
					 struct inode *inode, b_blocknr_t block)
{
	FUNC0(!th->t_trans_id);
	FUNC1(!th->t_super,
	       "vs-4060: trying to free block on nonexistent device");
	if (!FUNC3(th->t_super, block, 1))
		return;
	FUNC2(th, inode, block, 1);
}