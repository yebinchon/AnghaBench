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
 int FUNC0 (struct super_block*,unsigned long) ; 
 struct inode* FUNC1 (struct super_block*,struct hlist_head*,unsigned long) ; 
 struct hlist_head* inode_hashtable ; 

struct inode *FUNC2(struct super_block *sb, unsigned long ino)
{
	struct hlist_head *head = inode_hashtable + FUNC0(sb, ino);

	return FUNC1(sb, head, ino);
}