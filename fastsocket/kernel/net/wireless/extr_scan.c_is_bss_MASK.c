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
typedef  size_t u8 ;
struct cfg80211_bss_ies {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct cfg80211_bss {int /*<<< orphan*/  ies; int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 size_t* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t const*) ; 
 scalar_t__ FUNC2 (size_t const*,size_t const*,size_t) ; 
 struct cfg80211_bss_ies* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct cfg80211_bss *a, const u8 *bssid,
		   const u8 *ssid, size_t ssid_len)
{
	const struct cfg80211_bss_ies *ies;
	const u8 *ssidie;

	if (bssid && !FUNC1(a->bssid, bssid))
		return false;

	if (!ssid)
		return true;

	ies = FUNC3(a->ies);
	if (!ies)
		return false;
	ssidie = FUNC0(WLAN_EID_SSID, ies->data, ies->len);
	if (!ssidie)
		return false;
	if (ssidie[1] != ssid_len)
		return false;
	return FUNC2(ssidie + 2, ssid, ssid_len) == 0;
}