#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_6__ {int /*<<< orphan*/  magic; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ xfs_dir2_data_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_entry_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ; 
 scalar_t__ XFS_DIR2_DATA_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_dabuf_t		*bp,		/* block buffer */
	xfs_dir2_data_entry_t	*dep)		/* data entry pointer */
{
	xfs_dir2_data_t		*d;		/* data block pointer */

	d = bp->data;
	FUNC0(FUNC1(d->hdr.magic) == XFS_DIR2_DATA_MAGIC ||
	       FUNC1(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
	FUNC2(tp, bp, (uint)((char *)dep - (char *)d),
		(uint)((char *)(FUNC3(dep) + 1) -
		       (char *)d - 1));
}