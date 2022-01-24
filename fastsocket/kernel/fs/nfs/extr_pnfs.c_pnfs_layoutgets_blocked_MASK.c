#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pnfs_layout_hdr {int /*<<< orphan*/  plh_outstanding; int /*<<< orphan*/  plh_segs; int /*<<< orphan*/  plh_flags; scalar_t__ plh_block_lgets; scalar_t__ plh_barrier; } ;
struct TYPE_4__ {int /*<<< orphan*/  seqid; } ;
struct TYPE_5__ {TYPE_1__ stateid; } ;
typedef  TYPE_2__ nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LAYOUT_BULK_RECALL ; 
 int /*<<< orphan*/  NFS_LAYOUT_DESTROYED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct pnfs_layout_hdr *lo, nfs4_stateid *stateid,
			int lget)
{
	if ((stateid) &&
	    (int)(lo->plh_barrier - FUNC1(stateid->stateid.seqid)) >= 0)
		return true;
	return lo->plh_block_lgets ||
		FUNC3(NFS_LAYOUT_DESTROYED, &lo->plh_flags) ||
		FUNC3(NFS_LAYOUT_BULK_RECALL, &lo->plh_flags) ||
		(FUNC2(&lo->plh_segs) &&
		 (FUNC0(&lo->plh_outstanding) > lget));
}