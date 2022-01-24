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
struct nilfs_palloc_group_desc {int dummy; } ;
struct inode {unsigned long i_blkbits; } ;

/* Variables and functions */

__attribute__((used)) static inline unsigned long
FUNC0(const struct inode *inode)
{
	return (1UL << inode->i_blkbits) /
		sizeof(struct nilfs_palloc_group_desc);
}