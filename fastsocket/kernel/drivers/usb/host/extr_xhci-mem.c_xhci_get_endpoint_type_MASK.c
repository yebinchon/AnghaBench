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
typedef  int /*<<< orphan*/  u32 ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BULK_IN_EP ; 
 int /*<<< orphan*/  BULK_OUT_EP ; 
 int /*<<< orphan*/  CTRL_EP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_IN_EP ; 
 int /*<<< orphan*/  INT_OUT_EP ; 
 int /*<<< orphan*/  ISOC_IN_EP ; 
 int /*<<< orphan*/  ISOC_OUT_EP ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC7(struct usb_device *udev,
		struct usb_host_endpoint *ep)
{
	int in;
	u32 type;

	in = FUNC2(&ep->desc);
	if (FUNC4(&ep->desc)) {
		type = FUNC1(CTRL_EP);
	} else if (FUNC3(&ep->desc)) {
		if (in)
			type = FUNC1(BULK_IN_EP);
		else
			type = FUNC1(BULK_OUT_EP);
	} else if (FUNC6(&ep->desc)) {
		if (in)
			type = FUNC1(ISOC_IN_EP);
		else
			type = FUNC1(ISOC_OUT_EP);
	} else if (FUNC5(&ep->desc)) {
		if (in)
			type = FUNC1(INT_IN_EP);
		else
			type = FUNC1(INT_OUT_EP);
	} else {
		FUNC0();
	}
	return type;
}