#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  seeks; int /*<<< orphan*/  shrink; } ;
struct TYPE_8__ {TYPE_5__ bt_shrinker; int /*<<< orphan*/  bt_lru_lock; int /*<<< orphan*/  bt_lru; int /*<<< orphan*/  bt_bdi; struct block_device* bt_bdev; int /*<<< orphan*/  bt_dev; struct xfs_mount* bt_mount; } ;
typedef  TYPE_1__ xfs_buftarg_t ;
struct xfs_mount {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_SEEKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  xfs_buftarg_shrink ; 
 scalar_t__ FUNC7 (TYPE_1__*,struct block_device*) ; 

xfs_buftarg_t *
FUNC8(
	struct xfs_mount	*mp,
	struct block_device	*bdev,
	int			external,
	const char		*fsname)
{
	xfs_buftarg_t		*btp;

	btp = FUNC3(sizeof(*btp), KM_SLEEP);

	btp->bt_mount = mp;
	btp->bt_dev =  bdev->bd_dev;
	btp->bt_bdev = bdev;
	btp->bt_bdi = FUNC1(bdev);
	if (!btp->bt_bdi)
		goto error;

	FUNC0(&btp->bt_lru);
	FUNC5(&btp->bt_lru_lock);
	if (FUNC7(btp, bdev))
		goto error;
	if (FUNC6(btp, fsname))
		goto error;
	btp->bt_shrinker.shrink = xfs_buftarg_shrink;
	btp->bt_shrinker.seeks = DEFAULT_SEEKS;
	FUNC4(&btp->bt_shrinker);
	return btp;

error:
	FUNC2(btp);
	return NULL;
}