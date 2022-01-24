#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_1__ dev; } ;
struct uwb_rc {TYPE_3__ uwb_dev; int /*<<< orphan*/  pals; } ;
struct uwb_pal {char* name; int /*<<< orphan*/  node; int /*<<< orphan*/  debugfs_dir; TYPE_2__* device; struct uwb_rc* rc; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_pal*) ; 

int FUNC6(struct uwb_pal *pal)
{
	struct uwb_rc *rc = pal->rc;
	int ret;

	if (pal->device) {
		ret = FUNC3(&pal->device->kobj,
					&rc->uwb_dev.dev.kobj, "uwb_rc");
		if (ret < 0)
			return ret;
		ret = FUNC3(&rc->uwb_dev.dev.kobj,
					&pal->device->kobj, pal->name);
		if (ret < 0) {
			FUNC4(&pal->device->kobj, "uwb_rc");
			return ret;
		}
	}

	pal->debugfs_dir = FUNC5(pal);

	FUNC1(&rc->uwb_dev.mutex);
	FUNC0(&pal->node, &rc->pals);
	FUNC2(&rc->uwb_dev.mutex);

	return 0;
}