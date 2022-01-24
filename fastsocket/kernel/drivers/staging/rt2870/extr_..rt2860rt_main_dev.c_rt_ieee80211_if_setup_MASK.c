#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/ * name; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/ * wireless_handlers; } ;
struct TYPE_3__ {scalar_t__ OpMode; } ;
typedef  TYPE_1__* PRTMP_ADAPTER ;
typedef  int /*<<< orphan*/  NDIS_STATUS ;
typedef  int INT ;
typedef  int /*<<< orphan*/  CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  INT_MAIN ; 
 int /*<<< orphan*/  NDIS_STATUS_FAILURE ; 
 int /*<<< orphan*/  NDIS_STATUS_SUCCESS ; 
 scalar_t__ OPMODE_STA ; 
 int /*<<< orphan*/  RT_DEBUG_ERROR ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  rt2860_netdev_ops ; 
 int /*<<< orphan*/  rt28xx_iw_handler_def ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static NDIS_STATUS FUNC5(struct net_device *dev, PRTMP_ADAPTER pAd)
{
	NDIS_STATUS Status;
	INT     i=0;
	CHAR    slot_name[IFNAMSIZ];
	struct net_device   *device;

	if (pAd->OpMode == OPMODE_STA)
	{
		dev->wireless_handlers = &rt28xx_iw_handler_def;
	}

	dev->priv_flags = INT_MAIN;
	dev->netdev_ops = &rt2860_netdev_ops;
	// find available device name
	for (i = 0; i < 8; i++)
	{
		FUNC4(slot_name, "wlan%d", i);

		device = FUNC1(FUNC2(dev), slot_name);
		if (device != NULL)
			FUNC3(device);

		if (device == NULL)
			break;
	}

	if(i == 8)
	{
		FUNC0(RT_DEBUG_ERROR, ("No available slot name\n"));
		Status = NDIS_STATUS_FAILURE;
	}
	else
	{
		FUNC4(dev->name, "wlan%d", i);
		Status = NDIS_STATUS_SUCCESS;
	}

	return Status;

}