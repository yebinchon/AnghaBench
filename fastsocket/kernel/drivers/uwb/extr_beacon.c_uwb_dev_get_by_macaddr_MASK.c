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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct uwb_rc {TYPE_1__ uwb_beca; } ;
struct uwb_mac_addr {int dummy; } ;
struct uwb_dev {int dummy; } ;
struct uwb_beca_e {int /*<<< orphan*/  uwb_dev; } ;

/* Variables and functions */
 struct uwb_beca_e* FUNC0 (struct uwb_rc*,struct uwb_mac_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct uwb_dev* FUNC3 (struct uwb_rc*,int /*<<< orphan*/ ) ; 

struct uwb_dev *FUNC4(struct uwb_rc *rc,
				       const struct uwb_mac_addr *macaddr)
{
	struct uwb_dev *found = NULL;
	struct uwb_beca_e *bce;

	FUNC1(&rc->uwb_beca.mutex);
	bce = FUNC0(rc, macaddr);
	if (bce)
		found = FUNC3(rc, bce->uwb_dev);
	FUNC2(&rc->uwb_beca.mutex);

	return found;
}