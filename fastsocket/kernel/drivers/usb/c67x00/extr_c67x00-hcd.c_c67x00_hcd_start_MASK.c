#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_hcd {int uses_new_polling; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCD_FLAG_POLL_RH ; 
 int /*<<< orphan*/  HC_STATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct usb_hcd *hcd)
{
	hcd->uses_new_polling = 1;
	hcd->state = HC_STATE_RUNNING;
	FUNC0(HCD_FLAG_POLL_RH, &hcd->flags);

	return 0;
}