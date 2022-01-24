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
struct bmap {TYPE_1__* db_ipbmap; int /*<<< orphan*/  db_maxlevel; } ;
typedef  int /*<<< orphan*/  s64 ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EIO ; 
 int ENOSPC ; 
 int FUNC0 (struct bmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bmap*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct bmap * bmp, s64 nblocks, int l2nb, s64 * results)
{
	int rc;
	s64 blkno = 0;

	/* starting with the top level dmap control page, search
	 * down the dmap control levels for sufficient free space.
	 * if free space is found, dbFindCtl() returns the starting
	 * block number of the dmap that contains or starts off the
	 * range of free space.
	 */
	if ((rc = FUNC1(bmp, l2nb, bmp->db_maxlevel, &blkno)))
		return (rc);

	/* allocate the blocks.
	 */
	rc = FUNC0(bmp, nblocks, l2nb, blkno, results);
	if (rc == -ENOSPC) {
		FUNC2(bmp->db_ipbmap->i_sb,
			  "dbAllocAny: unable to allocate blocks");
		return -EIO;
	}
	return (rc);
}