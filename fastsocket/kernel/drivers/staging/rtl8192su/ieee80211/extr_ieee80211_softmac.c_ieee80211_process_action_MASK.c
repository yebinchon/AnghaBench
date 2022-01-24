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
typedef  int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rtl_ieee80211_hdr {int dummy; } ;
struct ieee80211_device {int dummy; } ;

/* Variables and functions */
 int ACT_ADDBAREQ ; 
 int ACT_ADDBARSP ; 
#define  ACT_CAT_BA 128 
 int ACT_DELBA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IEEE80211_DL_ERR ; 
 int* FUNC1 (struct rtl_ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*,struct sk_buff*) ; 

void FUNC5(struct ieee80211_device* ieee, struct sk_buff* skb)
{
	struct rtl_ieee80211_hdr *header =
		(struct rtl_ieee80211_hdr *)skb->data;
	u8* act = FUNC1(header);
	u8 tmp = 0;
//	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
	if (act == NULL)
	{
		FUNC0(IEEE80211_DL_ERR, "error to get payload of action frame\n");
		return;
	}
	tmp = *act;
	act ++;
	switch (tmp)
	{
		case ACT_CAT_BA:
			if (*act == ACT_ADDBAREQ)
			FUNC2(ieee, skb);
			else if (*act == ACT_ADDBARSP)
			FUNC3(ieee, skb);
			else if (*act == ACT_DELBA)
			FUNC4(ieee, skb);
			break;
		default:
//			if (net_ratelimit())
//			IEEE80211_DEBUG(IEEE80211_DL_BA, "unknown action frame(%d)\n", tmp);
			break;
	}
	return;

}