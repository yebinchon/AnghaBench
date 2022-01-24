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
struct usb_hcd {int dummy; } ;
struct dummy {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_urbs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dummy*) ; 
 struct dummy* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (struct usb_hcd *hcd)
{
	struct dummy		*dum;

	dum = FUNC3 (hcd);

	FUNC1 (FUNC2(dum), &dev_attr_urbs);
	FUNC4 (dum->driver);
	FUNC0 (FUNC2(dum), "stopped\n");
}