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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_device*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_interface *intf)
{
	struct usb_device   *dev = FUNC1(intf);
	PRTMP_ADAPTER       pAd;


	pAd = FUNC2(intf);
	FUNC3(intf, NULL);

	FUNC0(dev, pAd);
}