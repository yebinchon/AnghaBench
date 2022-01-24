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
struct usb_gadget {int dummy; } ;
struct musb {int softconnect; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct musb* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_gadget *gadget, int is_on)
{
	struct musb	*musb = FUNC0(gadget);
	unsigned long	flags;

	is_on = !!is_on;

	/* NOTE: this assumes we are sensing vbus; we'd rather
	 * not pullup unless the B-session is active.
	 */
	FUNC2(&musb->lock, flags);
	if (is_on != musb->softconnect) {
		musb->softconnect = is_on;
		FUNC1(musb, is_on);
	}
	FUNC3(&musb->lock, flags);
	return 0;
}