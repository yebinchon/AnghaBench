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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr3; int /*<<< orphan*/ * addr2; int /*<<< orphan*/  addr1; scalar_t__ duration_id; int /*<<< orphan*/  frame_ctl; } ;
struct ieee80211_probe_request {TYPE_2__ header; } ;
struct TYPE_6__ {unsigned int ssid_len; int /*<<< orphan*/  ssid; } ;
struct ieee80211_device {TYPE_3__ current_network; TYPE_1__* dev; scalar_t__ tx_headroom; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 unsigned int ETH_ALEN ; 
 int /*<<< orphan*/  IEEE80211_STYPE_PROBE_REQ ; 
 int /*<<< orphan*/  MFIE_TYPE_SSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,int /*<<< orphan*/ **) ; 
 unsigned int FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

inline struct sk_buff *FUNC9(struct ieee80211_device *ieee)
{
	unsigned int len,rate_len;
	u8 *tag;
	struct sk_buff *skb;
	struct ieee80211_probe_request *req;

	len = ieee->current_network.ssid_len;

	rate_len = FUNC4(ieee);

	skb = FUNC1(sizeof(struct ieee80211_probe_request) +
			    2 + len + rate_len + ieee->tx_headroom);
	if (!skb)
		return NULL;

	FUNC8(skb, ieee->tx_headroom);

	req = (struct ieee80211_probe_request *) FUNC7(skb,sizeof(struct ieee80211_probe_request));
	req->header.frame_ctl = FUNC0(IEEE80211_STYPE_PROBE_REQ);
	req->header.duration_id = 0; //FIXME: is this OK ?

	FUNC6(req->header.addr1, 0xff, ETH_ALEN);
	FUNC5(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
	FUNC6(req->header.addr3, 0xff, ETH_ALEN);

	tag = (u8 *) FUNC7(skb,len+2+rate_len);

	*tag++ = MFIE_TYPE_SSID;
	*tag++ = len;
	FUNC5(tag, ieee->current_network.ssid, len);
	tag += len;

	FUNC2(ieee,&tag);
	FUNC3(ieee,&tag);
	return skb;
}