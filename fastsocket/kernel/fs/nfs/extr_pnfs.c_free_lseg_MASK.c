#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_segment {TYPE_1__* pls_layout; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  layout; } ;
struct TYPE_7__ {TYPE_2__* pnfs_curr_ld; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* free_lseg ) (struct pnfs_layout_segment*) ;} ;
struct TYPE_5__ {struct inode* plh_inode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_segment*) ; 

__attribute__((used)) static void FUNC4(struct pnfs_layout_segment *lseg)
{
	struct inode *ino = lseg->pls_layout->plh_inode;

	FUNC1(ino)->pnfs_curr_ld->free_lseg(lseg);
	/* Matched by pnfs_get_layout_hdr in pnfs_insert_layout */
	FUNC2(FUNC0(ino)->layout);
}