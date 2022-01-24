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
struct u132 {int going; TYPE_1__* platform_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct u132* FUNC1 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC2(struct usb_hcd *hcd, unsigned port_num)
{
	struct u132 *u132 = FUNC1(hcd);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		return -ENODEV;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed\n");
		return -ESHUTDOWN;
	} else
		return 0;
}