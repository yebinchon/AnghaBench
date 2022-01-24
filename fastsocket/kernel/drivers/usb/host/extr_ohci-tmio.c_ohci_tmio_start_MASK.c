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
struct TYPE_2__ {int /*<<< orphan*/  bus_name; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ohci_hcd* FUNC1 (struct usb_hcd*) ; 
 int FUNC2 (struct ohci_hcd*) ; 
 int FUNC3 (struct ohci_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC5(struct usb_hcd *hcd)
{
	struct ohci_hcd *ohci = FUNC1(hcd);
	int ret;

	if ((ret = FUNC2(ohci)) < 0)
		return ret;

	if ((ret = FUNC3(ohci)) < 0) {
		FUNC0("can't start %s", hcd->self.bus_name);
		FUNC4(hcd);
		return ret;
	}

	return 0;
}