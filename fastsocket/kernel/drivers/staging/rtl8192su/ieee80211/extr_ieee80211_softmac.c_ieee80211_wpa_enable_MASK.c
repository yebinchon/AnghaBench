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
struct ieee80211_device {int wpa_enabled; int /*<<< orphan*/  ap_mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(struct ieee80211_device *ieee, int value)
{
	/* This is called when wpa_supplicant loads and closes the driver
	 * interface. */
	FUNC1("%s WPA\n",value ? "enabling" : "disabling");
	ieee->wpa_enabled = value;
	FUNC0(ieee->ap_mac_addr, 0, 6); //reset ap_mac_addr everytime it starts wpa.
	return 0;
}