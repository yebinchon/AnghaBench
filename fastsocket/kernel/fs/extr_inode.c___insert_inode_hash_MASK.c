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
struct inode {int /*<<< orphan*/  i_hash; int /*<<< orphan*/  i_sb; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  inode_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode, unsigned long hashval)
{
	struct hlist_head *head = inode_hashtable + FUNC0(inode->i_sb, hashval);
	FUNC2(&inode_lock);
	FUNC1(&inode->i_hash, head);
	FUNC3(&inode_lock);
}