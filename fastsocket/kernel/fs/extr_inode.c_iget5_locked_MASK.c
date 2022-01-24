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
struct inode {int dummy; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),int (*) (struct inode*,void*),void*) ; 
 int FUNC1 (struct super_block*,unsigned long) ; 
 struct inode* FUNC2 (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*,int) ; 
 struct hlist_head* inode_hashtable ; 

struct inode *FUNC3(struct super_block *sb, unsigned long hashval,
		int (*test)(struct inode *, void *),
		int (*set)(struct inode *, void *), void *data)
{
	struct hlist_head *head = inode_hashtable + FUNC1(sb, hashval);
	struct inode *inode;

	inode = FUNC2(sb, head, test, data, 1);
	if (inode)
		return inode;
	/*
	 * get_new_inode() will do the right thing, re-trying the search
	 * in case it had to block at any point.
	 */
	return FUNC0(sb, head, test, set, data);
}