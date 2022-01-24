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
struct usb_skel {int /*<<< orphan*/  io_mutex; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_skel*) ; 
 struct usb_skel* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC3(struct usb_interface *intf)
{
	struct usb_skel *dev = FUNC2(intf);

	FUNC0(&dev->io_mutex);
	FUNC1(dev);

	return 0;
}