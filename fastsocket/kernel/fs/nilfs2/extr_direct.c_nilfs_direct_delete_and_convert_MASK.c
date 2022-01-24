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
struct nilfs_direct {int dummy; } ;
struct nilfs_bmap {TYPE_1__* b_ops; } ;
typedef  int __u64 ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int (* bop_delete ) (struct nilfs_bmap*,int) ;int /*<<< orphan*/  (* bop_clear ) (struct nilfs_bmap*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_BMAP_INVALID_PTR ; 
 int NILFS_DIRECT_NBLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct nilfs_direct*) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (struct nilfs_bmap*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nilfs_bmap*) ; 

int FUNC5(struct nilfs_bmap *bmap,
				    __u64 key, __u64 *keys, __u64 *ptrs, int n)
{
	struct nilfs_direct *direct;
	__le64 *dptrs;
	int ret, i, j;

	/* no need to allocate any resource for conversion */

	/* delete */
	ret = bmap->b_ops->bop_delete(bmap, key);
	if (ret < 0)
		return ret;

	/* free resources */
	if (bmap->b_ops->bop_clear != NULL)
		bmap->b_ops->bop_clear(bmap);

	/* convert */
	direct = (struct nilfs_direct *)bmap;
	dptrs = FUNC1(direct);
	for (i = 0, j = 0; i < NILFS_DIRECT_NBLOCKS; i++) {
		if ((j < n) && (i == keys[j])) {
			dptrs[i] = (i != key) ?
				FUNC0(ptrs[j]) :
				NILFS_BMAP_INVALID_PTR;
			j++;
		} else
			dptrs[i] = NILFS_BMAP_INVALID_PTR;
	}

	FUNC2(bmap);
	return 0;
}