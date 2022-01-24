#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  t_mountp; } ;
typedef  TYPE_3__ xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_tail_t ;
struct TYPE_12__ {int /*<<< orphan*/  magic; } ;
struct TYPE_11__ {TYPE_2__ info; } ;
struct TYPE_14__ {TYPE_1__ hdr; } ;
typedef  TYPE_4__ xfs_dir2_leaf_t ;
struct TYPE_15__ {TYPE_4__* data; } ;
typedef  TYPE_5__ xfs_dabuf_t ;
typedef  int /*<<< orphan*/  uint ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC5(
	xfs_trans_t		*tp,		/* transaction pointer */
	xfs_dabuf_t		*bp,		/* leaf buffer */
	int			first,		/* first entry to log */
	int			last)		/* last entry to log */
{
	__be16			*firstb;	/* pointer to first entry */
	__be16			*lastb;		/* pointer to last entry */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */

	leaf = bp->data;
	FUNC0(FUNC1(leaf->hdr.info.magic) == XFS_DIR2_LEAF1_MAGIC);
	ltp = FUNC4(tp->t_mountp, leaf);
	firstb = FUNC3(ltp) + first;
	lastb = FUNC3(ltp) + last;
	FUNC2(tp, bp, (uint)((char *)firstb - (char *)leaf),
		(uint)((char *)lastb - (char *)leaf + sizeof(*lastb) - 1));
}