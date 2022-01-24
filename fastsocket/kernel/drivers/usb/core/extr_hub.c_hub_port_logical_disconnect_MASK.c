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
struct usb_hub {int /*<<< orphan*/  change_bits; int /*<<< orphan*/  intfdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_hub*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_hub *hub, int port1)
{
	FUNC0(hub->intfdev, "logical disconnect on port %d\n", port1);
	FUNC1(hub, port1, 1);

	/* FIXME let caller ask to power down the port:
	 *  - some devices won't enumerate without a VBUS power cycle
	 *  - SRP saves power that way
	 *  - ... new call, TBD ...
	 * That's easy if this hub can switch power per-port, and
	 * khubd reactivates the port later (timer, SRP, etc).
	 * Powerdown must be optional, because of reset/DFU.
	 */

	FUNC3(port1, hub->change_bits);
 	FUNC2(hub);
}