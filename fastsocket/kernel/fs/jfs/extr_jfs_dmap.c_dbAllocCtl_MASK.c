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
struct metapage {scalar_t__ data; } ;
struct TYPE_3__ {int* stree; } ;
struct dmap {TYPE_1__ tree; } ;
struct bmap {TYPE_2__* db_ipbmap; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  int s64 ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int BPERDMAP ; 
 int EIO ; 
 int L2BPERDMAP ; 
 int /*<<< orphan*/  PSIZE ; 
 size_t ROOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct bmap*,struct dmap*,int,int) ; 
 int FUNC3 (struct bmap*,struct dmap*,int,int,int*) ; 
 scalar_t__ FUNC4 (struct bmap*,struct dmap*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 
 int FUNC7 (int,int) ; 
 struct metapage* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 

__attribute__((used)) static int
FUNC11(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
{
	int rc, nb;
	s64 b, lblkno, n;
	struct metapage *mp;
	struct dmap *dp;

	/* check if the allocation request is confined to a single dmap.
	 */
	if (l2nb <= L2BPERDMAP) {
		/* get the buffer for the dmap.
		 */
		lblkno = FUNC0(blkno, bmp->db_l2nbperpage);
		mp = FUNC8(bmp->db_ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL)
			return -EIO;
		dp = (struct dmap *) mp->data;

		/* try to allocate the blocks.
		 */
		rc = FUNC3(bmp, dp, (int) nblocks, l2nb, results);
		if (rc == 0)
			FUNC6(mp);

		FUNC9(mp);

		return (rc);
	}

	/* allocation request involving multiple dmaps. it must start on
	 * a dmap boundary.
	 */
	FUNC1((blkno & (BPERDMAP - 1)) == 0);

	/* allocate the blocks dmap by dmap.
	 */
	for (n = nblocks, b = blkno; n > 0; n -= nb, b += nb) {
		/* get the buffer for the dmap.
		 */
		lblkno = FUNC0(b, bmp->db_l2nbperpage);
		mp = FUNC8(bmp->db_ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL) {
			rc = -EIO;
			goto backout;
		}
		dp = (struct dmap *) mp->data;

		/* the dmap better be all free.
		 */
		if (dp->tree.stree[ROOT] != L2BPERDMAP) {
			FUNC9(mp);
			FUNC5(bmp->db_ipbmap->i_sb,
				  "dbAllocCtl: the dmap is not all free");
			rc = -EIO;
			goto backout;
		}

		/* determine how many blocks to allocate from this dmap.
		 */
		nb = FUNC7(n, (s64)BPERDMAP);

		/* allocate the blocks from the dmap.
		 */
		if ((rc = FUNC2(bmp, dp, b, nb))) {
			FUNC9(mp);
			goto backout;
		}

		/* write the buffer.
		 */
		FUNC10(mp);
	}

	/* set the results (starting block number) and return.
	 */
	*results = blkno;
	return (0);

	/* something failed in handling an allocation request involving
	 * multiple dmaps.  we'll try to clean up by backing out any
	 * allocation that has already happened for this request.  if
	 * we fail in backing out the allocation, we'll mark the file
	 * system to indicate that blocks have been leaked.
	 */
      backout:

	/* try to backout the allocations dmap by dmap.
	 */
	for (n = nblocks - n, b = blkno; n > 0;
	     n -= BPERDMAP, b += BPERDMAP) {
		/* get the buffer for this dmap.
		 */
		lblkno = FUNC0(b, bmp->db_l2nbperpage);
		mp = FUNC8(bmp->db_ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL) {
			/* could not back out.  mark the file system
			 * to indicate that we have leaked blocks.
			 */
			FUNC5(bmp->db_ipbmap->i_sb,
				  "dbAllocCtl: I/O Error: Block Leakage.");
			continue;
		}
		dp = (struct dmap *) mp->data;

		/* free the blocks is this dmap.
		 */
		if (FUNC4(bmp, dp, b, BPERDMAP)) {
			/* could not back out.  mark the file system
			 * to indicate that we have leaked blocks.
			 */
			FUNC9(mp);
			FUNC5(bmp->db_ipbmap->i_sb,
				  "dbAllocCtl: Block Leakage.");
			continue;
		}

		/* write the buffer.
		 */
		FUNC10(mp);
	}

	return (rc);
}