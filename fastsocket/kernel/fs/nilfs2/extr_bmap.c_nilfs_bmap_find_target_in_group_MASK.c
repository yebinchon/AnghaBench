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
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct inode {int dummy; } ;
typedef  unsigned long __u64 ;
struct TYPE_2__ {unsigned long i_ino; } ;

/* Variables and functions */
 unsigned long NILFS_BMAP_GROUP_DIV ; 
 struct inode* FUNC0 (struct nilfs_bmap const*) ; 
 unsigned long FUNC1 (struct inode*) ; 

__u64 FUNC2(const struct nilfs_bmap *bmap)
{
	struct inode *dat = FUNC0(bmap);
	unsigned long entries_per_group = FUNC1(dat);
	unsigned long group = bmap->b_inode->i_ino / entries_per_group;

	return group * entries_per_group +
		(bmap->b_inode->i_ino % NILFS_BMAP_GROUP_DIV) *
		(entries_per_group / NILFS_BMAP_GROUP_DIV);
}