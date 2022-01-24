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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__* stree; } ;
struct dmap {int /*<<< orphan*/  nfree; int /*<<< orphan*/ * wmap; TYPE_1__ tree; } ;
struct bmap {int db_agl2size; int db_maxag; int* db_agfree; int db_nfree; TYPE_2__* db_ipbmap; } ;
typedef  scalar_t__ s8 ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  dmtree_t ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct bmap*) ; 
 int BPERDMAP ; 
 scalar_t__ BUDMIN ; 
 int FUNC2 (int,scalar_t__) ; 
 int DBWORD ; 
 int L2DBWORD ; 
 int LEAFIND ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  NOFREE ; 
 int ONES ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct bmap * bmp, struct dmap * dp, s64 blkno,
			int nblocks)
{
	int dbitno, word, rembits, nb, nwords, wbitno, nw, agno;
	dmtree_t *tp = (dmtree_t *) & dp->tree;
	int size;
	s8 *leaf;

	/* pick up a pointer to the leaves of the dmap tree */
	leaf = dp->tree.stree + LEAFIND;

	/* determine the bit number and word within the dmap of the
	 * starting block.
	 */
	dbitno = blkno & (BPERDMAP - 1);
	word = dbitno >> L2DBWORD;

	/* block range better be within the dmap */
	FUNC4(dbitno + nblocks <= BPERDMAP);

	/* allocate the bits of the dmap's words corresponding to the block
	 * range. not all bits of the first and last words may be contained
	 * within the block range.  if this is the case, we'll work against
	 * those words (i.e. partial first and/or last) on an individual basis
	 * (a single pass), allocating the bits of interest by hand and
	 * updating the leaf corresponding to the dmap word. a single pass
	 * will be used for all dmap words fully contained within the
	 * specified range.  within this pass, the bits of all fully contained
	 * dmap words will be marked as free in a single shot and the leaves
	 * will be updated. a single leaf may describe the free space of
	 * multiple dmap words, so we may update only a subset of the actual
	 * leaves corresponding to the dmap words of the block range.
	 */
	for (rembits = nblocks; rembits > 0; rembits -= nb, dbitno += nb) {
		/* determine the bit number within the word and
		 * the number of bits within the word.
		 */
		wbitno = dbitno & (DBWORD - 1);
		nb = FUNC11(rembits, DBWORD - wbitno);

		/* check if only part of a word is to be allocated.
		 */
		if (nb < DBWORD) {
			/* allocate (set to 1) the appropriate bits within
			 * this dmap word.
			 */
			dp->wmap[word] |= FUNC5(ONES << (DBWORD - nb)
						      >> wbitno);

			/* update the leaf for this dmap word. in addition
			 * to setting the leaf value to the binary buddy max
			 * of the updated dmap word, dbSplit() will split
			 * the binary system of the leaves if need be.
			 */
			FUNC7(tp, word, BUDMIN,
				FUNC6((u8 *) & dp->wmap[word]));

			word += 1;
		} else {
			/* one or more dmap words are fully contained
			 * within the block range.  determine how many
			 * words and allocate (set to 1) the bits of these
			 * words.
			 */
			nwords = rembits >> L2DBWORD;
			FUNC10(&dp->wmap[word], (int) ONES, nwords * 4);

			/* determine how many bits.
			 */
			nb = nwords << L2DBWORD;

			/* now update the appropriate leaves to reflect
			 * the allocated words.
			 */
			for (; nwords > 0; nwords -= nw) {
				if (leaf[word] < BUDMIN) {
					FUNC8(bmp->db_ipbmap->i_sb,
						  "dbAllocBits: leaf page "
						  "corrupt");
					break;
				}

				/* determine what the leaf value should be
				 * updated to as the minimum of the l2 number
				 * of bits being allocated and the l2 number
				 * of bits currently described by this leaf.
				 */
				size = FUNC11((int)leaf[word], FUNC3(nwords));

				/* update the leaf to reflect the allocation.
				 * in addition to setting the leaf value to
				 * NOFREE, dbSplit() will split the binary
				 * system of the leaves to reflect the current
				 * allocation (size).
				 */
				FUNC7(tp, word, size, NOFREE);

				/* get the number of dmap words handled */
				nw = FUNC2(size, BUDMIN);
				word += nw;
			}
		}
	}

	/* update the free count for this dmap */
	FUNC9(&dp->nfree, -nblocks);

	FUNC0(bmp);

	/* if this allocation group is completely free,
	 * update the maximum allocation group number if this allocation
	 * group is the new max.
	 */
	agno = blkno >> bmp->db_agl2size;
	if (agno > bmp->db_maxag)
		bmp->db_maxag = agno;

	/* update the free count for the allocation group and map */
	bmp->db_agfree[agno] -= nblocks;
	bmp->db_nfree -= nblocks;

	FUNC1(bmp);
}