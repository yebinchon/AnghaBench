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
struct nilfs_bmap {int /*<<< orphan*/  b_sem; TYPE_1__* b_ops; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_2__ {int (* bop_lookup ) (struct nilfs_bmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nilfs_bmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nilfs_bmap*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nilfs_bmap*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct nilfs_bmap *bmap, __u64 key, int level,
			       __u64 *ptrp)
{
	sector_t blocknr;
	int ret;

	FUNC1(&bmap->b_sem);
	ret = bmap->b_ops->bop_lookup(bmap, key, level, ptrp);
	if (ret < 0)
		goto out;
	if (FUNC0(bmap)) {
		ret = FUNC3(FUNC2(bmap), *ptrp,
					  &blocknr);
		if (!ret)
			*ptrp = blocknr;
	}

 out:
	FUNC5(&bmap->b_sem);
	return ret;
}