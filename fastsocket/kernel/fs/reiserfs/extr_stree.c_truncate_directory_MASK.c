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
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DOT_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  SD_OFFSET ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  TYPE_STAT_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct reiserfs_transaction_handle *th,
			       struct inode *inode)
{
	FUNC0(!th->t_trans_id);
	if (inode->i_nlink)
		FUNC3(inode->i_sb, "vs-5655", "link count != 0");

	FUNC5(KEY_FORMAT_3_5, FUNC1(inode), DOT_OFFSET);
	FUNC6(KEY_FORMAT_3_5, FUNC1(inode), TYPE_DIRENTRY);
	FUNC2(th, inode, FUNC1(inode));
	FUNC4(th, inode);
	FUNC5(KEY_FORMAT_3_5, FUNC1(inode), SD_OFFSET);
	FUNC6(KEY_FORMAT_3_5, FUNC1(inode), TYPE_STAT_DATA);
}