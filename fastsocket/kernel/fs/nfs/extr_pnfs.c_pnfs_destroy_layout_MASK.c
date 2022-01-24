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
struct TYPE_2__ {int /*<<< orphan*/  i_lock; } ;
struct nfs_inode {TYPE_1__ vfs_inode; struct pnfs_layout_hdr* layout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pnfs_layout_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_list ; 

void
FUNC5(struct nfs_inode *nfsi)
{
	struct pnfs_layout_hdr *lo;
	FUNC0(tmp_list);

	FUNC3(&nfsi->vfs_inode.i_lock);
	lo = nfsi->layout;
	if (lo) {
		lo->plh_block_lgets++; /* permanently block new LAYOUTGETs */
		FUNC1(lo, &tmp_list, NULL);
	}
	FUNC4(&nfsi->vfs_inode.i_lock);
	FUNC2(&tmp_list);
}