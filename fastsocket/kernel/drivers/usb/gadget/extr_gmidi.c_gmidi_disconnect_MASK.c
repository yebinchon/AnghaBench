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
struct gmidi_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct gmidi_device* FUNC0 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC1 (struct gmidi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct usb_gadget *gadget)
{
	struct gmidi_device *dev = FUNC0(gadget);
	unsigned long flags;

	FUNC2(&dev->lock, flags);
	FUNC1(dev);

	/* a more significant application might have some non-usb
	 * activities to quiesce here, saving resources like power
	 * or pushing the notification up a network stack.
	 */
	FUNC3(&dev->lock, flags);

	/* next we may get setup() calls to enumerate new connections;
	 * or an unbind() during shutdown (including removing module).
	 */
}