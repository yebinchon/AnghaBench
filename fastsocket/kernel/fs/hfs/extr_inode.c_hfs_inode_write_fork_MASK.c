#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_size; int /*<<< orphan*/  i_sb; } ;
struct hfs_extent {int dummy; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int alloc_blocks; int /*<<< orphan*/  first_extents; } ;
struct TYPE_3__ {int alloc_blksz; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_extent*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct inode *inode, struct hfs_extent *ext,
			  __be32 *log_size, __be32 *phys_size)
{
	FUNC3(ext, FUNC0(inode)->first_extents, sizeof(hfs_extent_rec));

	if (log_size)
		*log_size = FUNC2(inode->i_size);
	if (phys_size)
		*phys_size = FUNC2(FUNC0(inode)->alloc_blocks *
					 FUNC1(inode->i_sb)->alloc_blksz);
}