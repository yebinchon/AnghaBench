#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct ieee80211_network {unsigned int wpa_ie_len; unsigned int rsn_ie_len; int ssid_len; int capability; int /*<<< orphan*/  ssid; int /*<<< orphan*/  bssid; scalar_t__ Turbo_Enable; scalar_t__ QoS_Enable; } ;
struct ieee80211_device {int wpax_type_notify; scalar_t__* ap_mac_addr; unsigned int wpa_ie_len; int /*<<< orphan*/  wpa_ie; scalar_t__ short_slot; TYPE_1__* dev; scalar_t__ wpax_type_set; } ;
struct TYPE_6__ {int len; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int duration_id; scalar_t__* addr1; scalar_t__* addr2; scalar_t__* addr3; int /*<<< orphan*/  frame_ctl; } ;
struct ieee80211_assoc_request_frame {int listen_interval; TYPE_3__ info_element; int /*<<< orphan*/  capability; TYPE_2__ header; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 unsigned int ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_STYPE_ASSOC_REQ ; 
 scalar_t__ IEEE_PROTO_RSN ; 
 scalar_t__ IEEE_PROTO_WPA ; 
 int /*<<< orphan*/  MFIE_TYPE_SSID ; 
 int WLAN_CAPABILITY_BSS ; 
 int WLAN_CAPABILITY_PRIVACY ; 
 int WLAN_CAPABILITY_SHORT_PREAMBLE ; 
 int WLAN_CAPABILITY_SHORT_SLOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,scalar_t__**) ; 
 unsigned int FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_device*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_device*,scalar_t__**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__* FUNC8 (struct sk_buff*,unsigned int) ; 

inline struct sk_buff *FUNC9(struct ieee80211_network *beacon,struct ieee80211_device *ieee)
{
	struct sk_buff *skb;
	//unsigned long flags;

	struct ieee80211_assoc_request_frame *hdr;
	u8 *tag;
	//short info_addr = 0;
	//int i;
	//u16 suite_count = 0;
	//u8 suit_select = 0;
	unsigned int wpa_len = beacon->wpa_ie_len;
	//struct net_device *dev = ieee->dev;
	//union iwreq_data wrqu;
	//u8 *buff;
	//u8 *p;
#if 1
	// for testing purpose
	unsigned int rsn_len = beacon->rsn_ie_len;
#else
	unsigned int rsn_len = beacon->rsn_ie_len - 4;
#endif
	unsigned int rate_len = FUNC4(ieee);
	unsigned int wmm_info_len = beacon->QoS_Enable?9:0;
	unsigned int turbo_info_len = beacon->Turbo_Enable?9:0;

	u8  encry_proto = ieee->wpax_type_notify & 0xff;
	//u8  pairwise_type = (ieee->wpax_type_notify >> 8) & 0xff;
	//u8  authen_type = (ieee->wpax_type_notify >> 16) & 0xff;

	int len = 0;

	//[0] Notify type of encryption: WPA/WPA2
	//[1] pair wise type
	//[2] authen type
	if(ieee->wpax_type_set) {
		if (IEEE_PROTO_WPA == encry_proto) {
			rsn_len = 0;
		} else if (IEEE_PROTO_RSN == encry_proto) {
			wpa_len = 0;
		}
	}
	len = sizeof(struct ieee80211_assoc_request_frame)+
		+ beacon->ssid_len//essid tagged val
		+ rate_len//rates tagged val
		+ wpa_len
		+ rsn_len
		+ wmm_info_len
		+ turbo_info_len;

	skb = FUNC1(len);

	if (!skb)
		return NULL;

	hdr = (struct ieee80211_assoc_request_frame *)
		FUNC8(skb, sizeof(struct ieee80211_assoc_request_frame));


	hdr->header.frame_ctl = IEEE80211_STYPE_ASSOC_REQ;
	hdr->header.duration_id= 37; //FIXME
	FUNC7(hdr->header.addr1, beacon->bssid, ETH_ALEN);
	FUNC7(hdr->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
	FUNC7(hdr->header.addr3, beacon->bssid, ETH_ALEN);
	FUNC7(ieee->ap_mac_addr, beacon->bssid, ETH_ALEN);//for HW security, John

	hdr->capability = FUNC0(WLAN_CAPABILITY_BSS);
	if (beacon->capability & WLAN_CAPABILITY_PRIVACY )
		hdr->capability |= FUNC0(WLAN_CAPABILITY_PRIVACY);
	if (beacon->capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
		hdr->capability |= FUNC0(WLAN_CAPABILITY_SHORT_PREAMBLE);

	if(ieee->short_slot)
		hdr->capability |= FUNC0(WLAN_CAPABILITY_SHORT_SLOT);

	hdr->listen_interval = 0xa; //FIXME

	hdr->info_element.id = MFIE_TYPE_SSID;

	hdr->info_element.len = beacon->ssid_len;
	tag = FUNC8(skb, beacon->ssid_len);
	FUNC7(tag, beacon->ssid, beacon->ssid_len);

	tag = FUNC8(skb, rate_len);

	FUNC2(ieee, &tag);
	FUNC3(ieee, &tag);

	//add rsn==0 condition for ap's mix security mode(wpa+wpa2), john2007.8.9
	//choose AES encryption as default algorithm while using mixed mode

	tag = FUNC8(skb,ieee->wpa_ie_len);
	FUNC7(tag,ieee->wpa_ie,ieee->wpa_ie_len);

	tag = FUNC8(skb,wmm_info_len);
	if(wmm_info_len) {
	  FUNC6(ieee, &tag);
	}
	tag = FUNC8(skb,turbo_info_len);
        if(turbo_info_len) {
                FUNC5(ieee, &tag);
        }

	return skb;
}