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
struct u132 {int going; struct platform_device* platform_dev; int /*<<< orphan*/  u132_list; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct kref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct usb_hcd*,struct u132*,int,struct platform_device*) ; 
 struct u132* FUNC1 (struct kref*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int u132_instances ; 
 int /*<<< orphan*/  u132_module_lock ; 
 struct usb_hcd* FUNC5 (struct u132*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_hcd*) ; 

__attribute__((used)) static void FUNC7(struct kref *kref)
{
	struct u132 *u132 = FUNC1(kref);
	struct platform_device *pdev = u132->platform_dev;
	struct usb_hcd *hcd = FUNC5(u132);
	u132->going += 1;
	FUNC3(&u132_module_lock);
	FUNC2(&u132->u132_list);
	u132_instances -= 1;
	FUNC4(&u132_module_lock);
	FUNC0(&u132->platform_dev->dev, "FREEING the hcd=%p and thus the u13"
		"2=%p going=%d pdev=%p\n", hcd, u132, u132->going, pdev);
	FUNC6(hcd);
}