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
struct wa_xfer {TYPE_1__* wa; int /*<<< orphan*/  result; int /*<<< orphan*/  urb; int /*<<< orphan*/  list_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  wusb; int /*<<< orphan*/  xfer_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wa_xfer *xfer)
{
	unsigned long flags;

	FUNC1(&xfer->wa->xfer_list_lock, flags);
	FUNC0(&xfer->list_node);
	FUNC2(&xfer->wa->xfer_list_lock, flags);
	/* FIXME: segmentation broken -- kills DWA */
	FUNC5(xfer->wa->wusb, xfer->urb, xfer->result);
	FUNC3(xfer->wa);
	FUNC4(xfer);
}