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
struct metapage {scalar_t__ data; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {scalar_t__ db_mapsize; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {struct bmap* bmap; struct inode* ipbmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int BPERDMAP ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  RDWRLOCK_DMAP ; 
 int FUNC5 (struct bmap*,struct dmap*,scalar_t__,int) ; 
 int FUNC6 (scalar_t__,int) ; 
 struct metapage* FUNC7 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 

int FUNC10(struct inode *ip, s64 blkno, s64 nblocks)
{
	struct metapage *mp;
	struct dmap *dp;
	int nb, rc;
	s64 lblkno, rem;
	struct inode *ipbmap = FUNC4(ip->i_sb)->ipbmap;
	struct bmap *bmp = FUNC4(ip->i_sb)->bmap;

	FUNC2(ipbmap, RDWRLOCK_DMAP);

	/* block to be allocated better be within the mapsize. */
	FUNC0(nblocks <= bmp->db_mapsize - blkno);

	/*
	 * allocate the blocks a dmap at a time.
	 */
	mp = NULL;
	for (rem = nblocks; rem > 0; rem -= nb, blkno += nb) {
		/* release previous dmap if any */
		if (mp) {
			FUNC9(mp);
		}

		/* get the buffer for the current dmap. */
		lblkno = FUNC1(blkno, bmp->db_l2nbperpage);
		mp = FUNC7(ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL) {
			FUNC3(ipbmap);
			return -EIO;
		}
		dp = (struct dmap *) mp->data;

		/* determine the number of blocks to be allocated from
		 * this dmap.
		 */
		nb = FUNC6(rem, BPERDMAP - (blkno & (BPERDMAP - 1)));

		/* allocate the blocks. */
		if ((rc = FUNC5(bmp, dp, blkno, nb))) {
			FUNC8(mp);
			FUNC3(ipbmap);
			return (rc);
		}
	}

	/* write the last buffer. */
	FUNC9(mp);

	FUNC3(ipbmap);

	return (0);
}