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
typedef  int /*<<< orphan*/  u8 ;
struct ieee80211_hdr {int /*<<< orphan*/ * addr1; int /*<<< orphan*/ * addr2; int /*<<< orphan*/ * addr3; int /*<<< orphan*/  frame_control; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_AP_VLAN 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

u8 *FUNC8(struct ieee80211_hdr *hdr, size_t len,
			enum nl80211_iftype type)
{
	__le16 fc = hdr->frame_control;

	 /* drop ACK/CTS frames and incorrect hdr len (ctrl) */
	if (len < 16)
		return NULL;

	if (FUNC5(fc)) {
		if (len < 24) /* drop incorrect hdr len (data) */
			return NULL;

		if (FUNC0(fc))
			return NULL;
		if (FUNC2(fc))
			return hdr->addr1;
		if (FUNC1(fc))
			return hdr->addr2;

		return hdr->addr3;
	}

	if (FUNC6(fc)) {
		if (len < 24) /* drop incorrect hdr len (mgmt) */
			return NULL;
		return hdr->addr3;
	}

	if (FUNC4(fc)) {
		if(FUNC7(fc))
			return hdr->addr1;

		if (FUNC3(fc)) {
			switch (type) {
			case NL80211_IFTYPE_STATION:
				return hdr->addr2;
			case NL80211_IFTYPE_AP:
			case NL80211_IFTYPE_AP_VLAN:
				return hdr->addr1;
			default:
				break; /* fall through to the return */
			}
		}
	}

	return NULL;
}