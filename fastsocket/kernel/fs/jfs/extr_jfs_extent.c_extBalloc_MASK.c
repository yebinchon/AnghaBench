#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jfs_sb_info {int nbperpage; struct bmap* bmap; } ;
struct jfs_inode_info {scalar_t__ fileset; int active_ag; int /*<<< orphan*/  ag_lock; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct bmap {int db_maxfreebud; int /*<<< orphan*/ * db_active; } ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (int,struct jfs_sb_info*) ; 
 int ENOSPC ; 
 scalar_t__ FILESYSTEM_I ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 struct jfs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct inode *ip, s64 hint, s64 * nblocks, s64 * blkno)
{
	struct jfs_inode_info *ji = FUNC1(ip);
	struct jfs_sb_info *sbi = FUNC2(ip->i_sb);
	s64 nb, nblks, daddr, max;
	int rc, nbperpage = sbi->nbperpage;
	struct bmap *bmp = sbi->bmap;
	int ag;

	/* get the number of blocks to initially attempt to allocate.
	 * we'll first try the number of blocks requested unless this
	 * number is greater than the maximum number of contiguous free
	 * blocks in the map. in that case, we'll start off with the
	 * maximum free.
	 */
	max = (s64) 1 << bmp->db_maxfreebud;
	if (*nblocks >= max && *nblocks > nbperpage)
		nb = nblks = (max > nbperpage) ? max : nbperpage;
	else
		nb = nblks = *nblocks;

	/* try to allocate blocks */
	while ((rc = FUNC6(ip, hint, nb, &daddr)) != 0) {
		/* if something other than an out of space error,
		 * stop and return this error.
		 */
		if (rc != -ENOSPC)
			return (rc);

		/* decrease the allocation request size */
		nb = FUNC8(nblks, FUNC7(nb));

		/* give up if we cannot cover a page */
		if (nb < nbperpage)
			return (rc);
	}

	*nblocks = nb;
	*blkno = daddr;

	if (FUNC3(ip->i_mode) && (ji->fileset == FILESYSTEM_I)) {
		ag = FUNC0(daddr, sbi);
		FUNC9(&ji->ag_lock);
		if (ji->active_ag == -1) {
			FUNC5(&bmp->db_active[ag]);
			ji->active_ag = ag;
		} else if (ji->active_ag != ag) {
			FUNC4(&bmp->db_active[ji->active_ag]);
			FUNC5(&bmp->db_active[ag]);
			ji->active_ag = ag;
		}
		FUNC10(&ji->ag_lock);
	}

	return (0);
}