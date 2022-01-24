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
struct musb {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct musb* FUNC0 (struct device*) ; 
 struct musb* FUNC1 (struct musb*) ; 

__attribute__((used)) static inline struct musb *FUNC2(struct device *dev)
{
#ifdef CONFIG_USB_MUSB_HDRC_HCD
	/* usbcore insists dev->driver_data is a "struct hcd *" */
	return hcd_to_musb(dev_get_drvdata(dev));
#else
	return FUNC0(dev);
#endif
}