#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  mtx; TYPE_2__* associated; } ;
struct TYPE_11__ {TYPE_4__ mgd; } ;
struct TYPE_9__ {int type; int /*<<< orphan*/ * addr; } ;
struct ieee80211_sub_if_data {TYPE_5__ u; TYPE_3__ vif; struct ieee80211_local* local; } ;
struct TYPE_7__ {scalar_t__ extra_tx_headroom; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_12__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bssid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_DATA ; 
 TYPE_6__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_STYPE_DATA ; 
 int /*<<< orphan*/  IEEE80211_TX_INTFL_TKIP_MIC_FAILURE ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_sub_if_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_sub_if_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct ieee80211_hdr* FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC13(
	struct ieee80211_sub_if_data *sdata, const char *buf, int buflen)
{
	struct ieee80211_local *local = sdata->local;
	u8 addr[ETH_ALEN];
	struct sk_buff *skb;
	struct ieee80211_hdr *hdr;
	__le16 fc;

	if (!FUNC6(buf, addr))
		return -EINVAL;

	if (!FUNC4(sdata))
		return -ENOTCONN;

	skb = FUNC2(local->hw.extra_tx_headroom + 24 + 100);
	if (!skb)
		return -ENOMEM;
	FUNC12(skb, local->hw.extra_tx_headroom);

	hdr = (struct ieee80211_hdr *) FUNC11(skb, 24);
	FUNC8(hdr, 0, 24);
	fc = FUNC1(IEEE80211_FTYPE_DATA | IEEE80211_STYPE_DATA);

	switch (sdata->vif.type) {
	case NL80211_IFTYPE_AP:
		fc |= FUNC1(IEEE80211_FCTL_FROMDS);
		/* DA BSSID SA */
		FUNC7(hdr->addr1, addr, ETH_ALEN);
		FUNC7(hdr->addr2, sdata->vif.addr, ETH_ALEN);
		FUNC7(hdr->addr3, sdata->vif.addr, ETH_ALEN);
		break;
	case NL80211_IFTYPE_STATION:
		fc |= FUNC1(IEEE80211_FCTL_TODS);
		/* BSSID SA DA */
		FUNC9(&sdata->u.mgd.mtx);
		if (!sdata->u.mgd.associated) {
			FUNC10(&sdata->u.mgd.mtx);
			FUNC3(skb);
			return -ENOTCONN;
		}
		FUNC7(hdr->addr1, sdata->u.mgd.associated->bssid, ETH_ALEN);
		FUNC7(hdr->addr2, sdata->vif.addr, ETH_ALEN);
		FUNC7(hdr->addr3, addr, ETH_ALEN);
		FUNC10(&sdata->u.mgd.mtx);
		break;
	default:
		FUNC3(skb);
		return -EOPNOTSUPP;
	}
	hdr->frame_control = fc;

	/*
	 * Add some length to the test frame to make it look bit more valid.
	 * The exact contents does not matter since the recipient is required
	 * to drop this because of the Michael MIC failure.
	 */
	FUNC8(FUNC11(skb, 50), 0, 50);

	FUNC0(skb)->flags |= IEEE80211_TX_INTFL_TKIP_MIC_FAILURE;

	FUNC5(sdata, skb);

	return buflen;
}