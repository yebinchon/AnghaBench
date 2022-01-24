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
struct TYPE_2__ {scalar_t__* stree; } ;
struct dmap {TYPE_1__ tree; } ;
struct bmap {int dummy; } ;
typedef  scalar_t__ s8 ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 size_t ROOT ; 
 int FUNC0 (struct bmap*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bmap*,struct dmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bmap*,struct dmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct bmap * bmp, struct dmap * dp, s64 blkno,
		       int nblocks)
{
	s8 oldroot;
	int rc;

	/* save the current value of the root (i.e. maximum free string)
	 * of the dmap tree.
	 */
	oldroot = dp->tree.stree[ROOT];

	/* allocate the specified (blocks) bits */
	FUNC1(bmp, dp, blkno, nblocks);

	/* if the root has not changed, done. */
	if (dp->tree.stree[ROOT] == oldroot)
		return (0);

	/* root changed. bubble the change up to the dmap control pages.
	 * if the adjustment of the upper level control pages fails,
	 * backout the bit allocation (thus making everything consistent).
	 */
	if ((rc = FUNC0(bmp, blkno, dp->tree.stree[ROOT], 1, 0)))
		FUNC2(bmp, dp, blkno, nblocks);

	return (rc);
}