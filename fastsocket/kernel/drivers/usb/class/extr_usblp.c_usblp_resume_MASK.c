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
struct usblp {scalar_t__ sleeping; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usblp*) ; 
 struct usblp* FUNC1 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC2 (struct usb_interface *intf)
{
	struct usblp *usblp = FUNC1 (intf);
	int r;

	usblp->sleeping = 0;
	r = FUNC0 (usblp);

	return r;
}