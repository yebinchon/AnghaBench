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
typedef  TYPE_2__ xfs_dir2_free_t ;
typedef  int /*<<< orphan*/  xfs_dir2_free_hdr_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
typedef  TYPE_3__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_FREE_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_dabuf_t		*bp)		/* freespace buffer */
{
	xfs_dir2_free_t		*free;		/* freespace structure */

	free = bp->data;
	FUNC0(FUNC1(free->hdr.magic) == XFS_DIR2_FREE_MAGIC);
	FUNC2(tp, bp, (uint)((char *)&free->hdr - (char *)free),
		(uint)(sizeof(xfs_dir2_free_hdr_t) - 1));
}