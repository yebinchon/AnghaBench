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
struct nilfs_mdt_info {unsigned int mi_entry_size; int mi_entries_per_block; int /*<<< orphan*/  mi_first_entry_offset; } ;
struct inode {int i_blkbits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 struct nilfs_mdt_info* FUNC1 (struct inode*) ; 

void FUNC2(struct inode *inode, unsigned entry_size,
			      unsigned header_size)
{
	struct nilfs_mdt_info *mi = FUNC1(inode);

	mi->mi_entry_size = entry_size;
	mi->mi_entries_per_block = (1 << inode->i_blkbits) / entry_size;
	mi->mi_first_entry_offset = FUNC0(header_size, entry_size);
}