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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  const* addr; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct TYPE_2__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_PROBE_REQ ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hdr_3addr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 struct ieee80211_sub_if_data* FUNC7 (struct ieee80211_vif*) ; 

struct sk_buff *FUNC8(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       const u8 *ssid, size_t ssid_len,
				       size_t tailroom)
{
	struct ieee80211_sub_if_data *sdata;
	struct ieee80211_local *local;
	struct ieee80211_hdr_3addr *hdr;
	struct sk_buff *skb;
	size_t ie_ssid_len;
	u8 *pos;

	sdata = FUNC7(vif);
	local = sdata->local;
	ie_ssid_len = 2 + ssid_len;

	skb = FUNC1(local->hw.extra_tx_headroom + sizeof(*hdr) +
			    ie_ssid_len + tailroom);
	if (!skb)
		return NULL;

	FUNC6(skb, local->hw.extra_tx_headroom);

	hdr = (struct ieee80211_hdr_3addr *) FUNC5(skb, sizeof(*hdr));
	FUNC4(hdr, 0, sizeof(*hdr));
	hdr->frame_control = FUNC0(IEEE80211_FTYPE_MGMT |
					 IEEE80211_STYPE_PROBE_REQ);
	FUNC2(hdr->addr1);
	FUNC3(hdr->addr2, vif->addr, ETH_ALEN);
	FUNC2(hdr->addr3);

	pos = FUNC5(skb, ie_ssid_len);
	*pos++ = WLAN_EID_SSID;
	*pos++ = ssid_len;
	if (ssid_len)
		FUNC3(pos, ssid, ssid_len);
	pos += ssid_len;

	return skb;
}