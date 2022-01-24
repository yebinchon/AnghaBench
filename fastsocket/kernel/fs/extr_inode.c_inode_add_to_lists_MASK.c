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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,struct hlist_head*,struct inode*) ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct super_block *sb, struct inode *inode)
{
	struct hlist_head *head = inode_hashtable + FUNC1(sb, inode->i_ino);

	FUNC2(&inode_lock);
	FUNC0(sb, head, inode);
	FUNC3(&inode_lock);
}