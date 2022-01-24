#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  t_flags; } ;
typedef  TYPE_4__ xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_extlen_t ;
struct TYPE_13__ {int /*<<< orphan*/  ext_len; int /*<<< orphan*/  ext_start; } ;
typedef  TYPE_5__ xfs_extent_t ;
struct TYPE_9__ {size_t efd_nextents; TYPE_5__* efd_extents; } ;
struct TYPE_11__ {TYPE_2__* li_desc; } ;
struct TYPE_14__ {size_t efd_next_extent; TYPE_1__ efd_format; TYPE_3__ efd_item; } ;
typedef  TYPE_6__ xfs_efd_log_item_t ;
typedef  size_t uint ;
struct TYPE_10__ {int /*<<< orphan*/  lid_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_LID_DIRTY ; 
 int /*<<< orphan*/  XFS_TRANS_DIRTY ; 

void
FUNC1(xfs_trans_t		*tp,
			 xfs_efd_log_item_t	*efdp,
			 xfs_fsblock_t		start_block,
			 xfs_extlen_t		ext_len)
{
	uint			next_extent;
	xfs_extent_t		*extp;

	tp->t_flags |= XFS_TRANS_DIRTY;
	efdp->efd_item.li_desc->lid_flags |= XFS_LID_DIRTY;

	next_extent = efdp->efd_next_extent;
	FUNC0(next_extent < efdp->efd_format.efd_nextents);
	extp = &(efdp->efd_format.efd_extents[next_extent]);
	extp->ext_start = start_block;
	extp->ext_len = ext_len;
	efdp->efd_next_extent++;
}