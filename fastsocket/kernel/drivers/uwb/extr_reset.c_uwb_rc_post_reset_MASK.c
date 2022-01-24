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
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mac_addr; } ;
struct uwb_rc {int (* start ) (struct uwb_rc*) ;TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int FUNC0 (struct uwb_rc*) ; 
 int FUNC1 (struct uwb_rc*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uwb_rc*,int /*<<< orphan*/ *) ; 

int FUNC3(struct uwb_rc *rc)
{
	int ret;

	ret = rc->start(rc);
	if (ret)
		goto out;
	ret = FUNC2(rc, &rc->uwb_dev.mac_addr);
	if (ret)
		goto out;
	ret = FUNC1(rc, &rc->uwb_dev.dev_addr);
	if (ret)
		goto out;
out:
	return ret;
}