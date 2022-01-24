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
struct usb_skel {struct usb_skel* bulk_in_buffer; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_in_urb; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_skel*) ; 
 struct usb_skel* FUNC1 (struct kref*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kref *kref)
{
	struct usb_skel *dev = FUNC1(kref);

	FUNC2(dev->bulk_in_urb);
	FUNC3(dev->udev);
	FUNC0(dev->bulk_in_buffer);
	FUNC0(dev);
}