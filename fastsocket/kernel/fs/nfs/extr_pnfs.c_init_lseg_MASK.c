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
struct pnfs_layout_segment {struct pnfs_layout_hdr* pls_layout; int /*<<< orphan*/  pls_flags; int /*<<< orphan*/  pls_refcount; int /*<<< orphan*/  pls_lc_list; int /*<<< orphan*/  pls_list; } ;
struct pnfs_layout_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_LSEG_VALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct pnfs_layout_hdr *lo, struct pnfs_layout_segment *lseg)
{
	FUNC0(&lseg->pls_list);
	FUNC0(&lseg->pls_lc_list);
	FUNC1(&lseg->pls_refcount, 1);
	FUNC3();
	FUNC2(NFS_LSEG_VALID, &lseg->pls_flags);
	lseg->pls_layout = lo;
}