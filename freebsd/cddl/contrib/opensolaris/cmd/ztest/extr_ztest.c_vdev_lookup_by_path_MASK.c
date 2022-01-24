#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int vdev_children; struct TYPE_4__** vdev_child; int /*<<< orphan*/ * vdev_path; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static vdev_t *
FUNC1(vdev_t *vd, const char *path)
{
	vdev_t *mvd;

	if (vd->vdev_path != NULL && FUNC0(path, vd->vdev_path) == 0)
		return (vd);

	for (int c = 0; c < vd->vdev_children; c++)
		if ((mvd = FUNC1(vd->vdev_child[c], path)) !=
		    NULL)
			return (mvd);

	return (NULL);
}