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
struct pnfs_layout_segment {TYPE_1__* pls_layout; int /*<<< orphan*/  pls_list; int /*<<< orphan*/  pls_flags; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  roc_rpcwaitq; } ;
struct TYPE_3__ {int /*<<< orphan*/  plh_flags; int /*<<< orphan*/  plh_segs; struct inode* plh_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LAYOUT_DESTROYED ; 
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct pnfs_layout_segment *lseg)
{
	struct inode *inode = lseg->pls_layout->plh_inode;

	FUNC1(FUNC7(NFS_LSEG_VALID, &lseg->pls_flags));
	FUNC2(&lseg->pls_list);
	if (FUNC3(&lseg->pls_layout->plh_segs)) {
		FUNC6(NFS_LAYOUT_DESTROYED, &lseg->pls_layout->plh_flags);
		/* Matched by initial refcount set in alloc_init_layout_hdr */
		FUNC4(lseg->pls_layout);
	}
	FUNC5(&FUNC0(inode)->roc_rpcwaitq);
}