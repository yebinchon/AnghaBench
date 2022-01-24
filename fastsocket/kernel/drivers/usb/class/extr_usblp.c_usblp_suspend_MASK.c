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
struct usblp {int sleeping; int /*<<< orphan*/  rwait; int /*<<< orphan*/  wwait; } ;
struct usb_interface {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct usblp* FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (struct usblp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (struct usb_interface *intf, pm_message_t message)
{
	struct usblp *usblp = FUNC0 (intf);

	/* we take no more IO */
	usblp->sleeping = 1;
	FUNC1(usblp);
#if 0 /* XXX Do we want this? What if someone is reading, should we fail? */
	/* not strictly necessary, but just in case */
	wake_up(&usblp->wwait);
	wake_up(&usblp->rwait);
#endif

	return 0;
}