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
struct usb_hcd {int dummy; } ;
struct urb {TYPE_1__* ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct usb_hcd*,struct urb*) ; 
 int FUNC1 (struct usb_hcd*,struct urb*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (struct usb_hcd *hcd, struct urb *urb)
{
	if (FUNC3(&urb->ep->desc))
		return FUNC1 (hcd, urb);
	if (FUNC2(&urb->ep->desc))
		return FUNC0 (hcd, urb);
	return -EINVAL;
}