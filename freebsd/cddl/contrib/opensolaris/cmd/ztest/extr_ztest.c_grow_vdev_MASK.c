#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* vdev_path; TYPE_1__* vdev_ops; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  ulong_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_8__ {int zo_verbose; } ;
struct TYPE_6__ {int vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  RW_READER ; 
 scalar_t__ SCL_STATE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t) ; 
 size_t FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__ ztest_opts ; 

vdev_t *
FUNC7(vdev_t *vd, void *arg)
{
	spa_t *spa = vd->vdev_spa;
	size_t *newsize = arg;
	size_t fsize;
	int fd;

	FUNC0(FUNC6(spa, SCL_STATE, RW_READER) == SCL_STATE);
	FUNC0(vd->vdev_ops->vdev_op_leaf);

	if ((fd = FUNC4(vd->vdev_path, O_RDWR)) == -1)
		return (vd);

	fsize = FUNC3(fd, 0, SEEK_END);
	(void) FUNC2(fd, *newsize);

	if (ztest_opts.zo_verbose >= 6) {
		(void) FUNC5("%s grew from %lu to %lu bytes\n",
		    vd->vdev_path, (ulong_t)fsize, (ulong_t)*newsize);
	}
	(void) FUNC1(fd);
	return (NULL);
}