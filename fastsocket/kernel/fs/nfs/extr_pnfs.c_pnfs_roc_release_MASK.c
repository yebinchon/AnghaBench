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
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_block_lgets; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *ino)
{
	struct pnfs_layout_hdr *lo;

	FUNC2(&ino->i_lock);
	lo = FUNC0(ino)->layout;
	lo->plh_block_lgets--;
	FUNC1(lo);
	FUNC3(&ino->i_lock);
}