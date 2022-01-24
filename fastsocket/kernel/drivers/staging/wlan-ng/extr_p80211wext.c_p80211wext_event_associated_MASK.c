#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  bssid; } ;
typedef  TYPE_2__ wlandevice_t ;
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 
 scalar_t__ wlan_wext_write ; 

int FUNC3(wlandevice_t * wlandev, int assoc)
{
	union iwreq_data data;

	/* Send the association state first */
	data.ap_addr.sa_family = ARPHRD_ETHER;
	if (assoc)
		FUNC0(data.ap_addr.sa_data, wlandev->bssid, ETH_ALEN);
	else
		FUNC1(data.ap_addr.sa_data, 0, ETH_ALEN);

	if (wlan_wext_write)
		FUNC2(wlandev->netdev, SIOCGIWAP, &data, NULL);

	if (!assoc)
		goto done;

	/* XXX send association data, like IEs, etc etc. */

done:
	return 0;
}