#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_device {int /*<<< orphan*/  devpath; TYPE_1__* bus; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {struct net_device* net_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus_name; } ;
typedef  TYPE_2__* PRTMP_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 int /*<<< orphan*/  fRTMP_ADAPTER_NIC_NOT_EXIST ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 

__attribute__((used)) static void FUNC9(struct usb_device *dev, PRTMP_ADAPTER pAd)
{
	struct net_device	*net_dev = NULL;


	FUNC0(RT_DEBUG_ERROR, ("rtusb_disconnect: unregister usbnet usb-%s-%s\n",
				dev->bus->bus_name, dev->devpath));
	if (!pAd)
	{
		FUNC8(dev);

		FUNC5("rtusb_disconnect: pAd == NULL!\n");
		return;
	}
	FUNC2(pAd, fRTMP_ADAPTER_NIC_NOT_EXIST);



	// for debug, wait to show some messages to /proc system
	FUNC6(1);




	net_dev = pAd->net_dev;
	if (pAd->net_dev != NULL)
	{
		FUNC5("rtusb_disconnect: unregister_netdev(), dev->name=%s!\n", net_dev->name);
		FUNC7 (pAd->net_dev);
	}
	FUNC6(1);
	FUNC3();
	FUNC6(1);

	// free net_device memory
	FUNC4(net_dev);

	// free adapter memory
	FUNC1(pAd);

	// release a use of the usb device structure
	FUNC8(dev);
	FUNC6(1);

	FUNC0(RT_DEBUG_ERROR, (" RTUSB disconnect successfully\n"));
}