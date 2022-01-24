#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_od_t ;
struct TYPE_6__ {int /*<<< orphan*/  zd_dirobj_lock; int /*<<< orphan*/ * zd_od; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(ztest_ds_t *zd, ztest_od_t *od, size_t size, boolean_t remove)
{
	int count = size / sizeof (*od);
	int rv = 0;

	FUNC0(&zd->zd_dirobj_lock);
	if ((FUNC3(zd, od, count) != 0 || remove) &&
	    (FUNC4(zd, od, count) != 0 ||
	    FUNC2(zd, od, count) != 0))
		rv = -1;
	zd->zd_od = od;
	FUNC1(&zd->zd_dirobj_lock);

	return (rv);
}