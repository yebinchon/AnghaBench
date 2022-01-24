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
struct TYPE_4__ {int vdev_ashift; struct TYPE_4__* vdev_top; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_label_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uberblock_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int ZDB_MAX_UB_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(vdev_label_t *lbl, uint64_t ashift)
{
	vdev_t vd;
	vdev_t *vdp = &vd;
	char header[ZDB_MAX_UB_HEADER_SIZE];

	vd.vdev_ashift = ashift;
	vdp->vdev_top = vdp;

	for (int i = 0; i < FUNC0(vdp); i++) {
		uint64_t uoff = FUNC1(vdp, i);
		uberblock_t *ub = (void *)((char *)lbl + uoff);

		if (FUNC4(ub))
			continue;
		(void) FUNC3(header, ZDB_MAX_UB_HEADER_SIZE,
		    "Uberblock[%d]\n", i);
		FUNC2(ub, header, "");
	}
}