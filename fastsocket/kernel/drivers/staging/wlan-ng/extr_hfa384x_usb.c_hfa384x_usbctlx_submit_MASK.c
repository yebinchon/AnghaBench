#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
typedef  TYPE_3__ hfa384x_usbctlx_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; } ;
struct TYPE_11__ {TYPE_1__ ctlxq; TYPE_2__* wlandev; } ;
typedef  TYPE_4__ hfa384x_t ;
struct TYPE_9__ {scalar_t__ hwremoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLX_PENDING ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(hfa384x_t *hw, hfa384x_usbctlx_t *ctlx)
{
	unsigned long flags;
	int ret;

	FUNC2(&hw->ctlxq.lock, flags);

	if (hw->wlandev->hwremoved) {
		FUNC3(&hw->ctlxq.lock, flags);
		ret = -ENODEV;
	} else {
		ctlx->state = CTLX_PENDING;
		FUNC1(&ctlx->list, &hw->ctlxq.pending);

		FUNC3(&hw->ctlxq.lock, flags);
		FUNC0(hw);
		ret = 0;
	}

	return ret;
}