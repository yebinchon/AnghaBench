#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int iftype; struct cfg80211_internal_bss* current_bss; TYPE_1__* netdev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  skb; } ;
struct TYPE_7__ {int signal_type; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; int /*<<< orphan*/  bss_generation; } ;
struct cfg80211_bss {int /*<<< orphan*/  signal; TYPE_2__* channel; scalar_t__ capability; scalar_t__ beacon_interval; int /*<<< orphan*/  beacon_ies; int /*<<< orphan*/  ies; int /*<<< orphan*/  bssid; } ;
struct cfg80211_internal_bss {scalar_t__ ts; struct cfg80211_bss pub; } ;
struct cfg80211_bss_ies {int /*<<< orphan*/  data; scalar_t__ len; int /*<<< orphan*/  tsf; } ;
struct TYPE_8__ {int /*<<< orphan*/  pid; } ;
struct TYPE_6__ {int /*<<< orphan*/  center_freq; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
#define  CFG80211_SIGNAL_TYPE_MBM 132 
#define  CFG80211_SIGNAL_TYPE_UNSPEC 131 
 int EMSGSIZE ; 
 scalar_t__ ETH_ALEN ; 
 TYPE_4__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_ATTR_BSS ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_BSS_BEACON_IES ; 
 int /*<<< orphan*/  NL80211_BSS_BEACON_INTERVAL ; 
 int /*<<< orphan*/  NL80211_BSS_BSSID ; 
 int /*<<< orphan*/  NL80211_BSS_CAPABILITY ; 
 int /*<<< orphan*/  NL80211_BSS_FREQUENCY ; 
 int /*<<< orphan*/  NL80211_BSS_INFORMATION_ELEMENTS ; 
 int /*<<< orphan*/  NL80211_BSS_SEEN_MS_AGO ; 
 int /*<<< orphan*/  NL80211_BSS_SIGNAL_MBM ; 
 int /*<<< orphan*/  NL80211_BSS_SIGNAL_UNSPEC ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS_ASSOCIATED ; 
 int /*<<< orphan*/  NL80211_BSS_STATUS_IBSS_JOINED ; 
 int /*<<< orphan*/  NL80211_BSS_TSF ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_SCAN_RESULTS ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_P2P_CLIENT 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC2 (struct netlink_callback*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int FUNC4 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 void* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfg80211_bss_ies* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC19(struct sk_buff *msg, struct netlink_callback *cb,
			    u32 seq, int flags,
			    struct cfg80211_registered_device *rdev,
			    struct wireless_dev *wdev,
			    struct cfg80211_internal_bss *intbss)
{
	struct cfg80211_bss *res = &intbss->pub;
	const struct cfg80211_bss_ies *ies;
	void *hdr;
	struct nlattr *bss;
	bool tsf = false;

	FUNC0(wdev);

	hdr = FUNC7(msg, FUNC1(cb->skb).pid, seq, flags,
			     NL80211_CMD_NEW_SCAN_RESULTS);
	if (!hdr)
		return -1;

	FUNC2(cb, hdr, &nl80211_fam);

	if (FUNC12(msg, NL80211_ATTR_GENERATION, rdev->bss_generation))
		goto nla_put_failure;
	if (wdev->netdev &&
	    FUNC12(msg, NL80211_ATTR_IFINDEX, wdev->netdev->ifindex))
		goto nla_put_failure;
	if (FUNC13(msg, NL80211_ATTR_WDEV, FUNC18(wdev)))
		goto nla_put_failure;

	bss = FUNC9(msg, NL80211_ATTR_BSS);
	if (!bss)
		goto nla_put_failure;
	if ((!FUNC5(res->bssid) &&
	     FUNC10(msg, NL80211_BSS_BSSID, ETH_ALEN, res->bssid)))
		goto nla_put_failure;

	FUNC16();
	ies = FUNC15(res->ies);
	if (ies) {
		if (FUNC13(msg, NL80211_BSS_TSF, ies->tsf))
			goto fail_unlock_rcu;
		tsf = true;
		if (ies->len && FUNC10(msg, NL80211_BSS_INFORMATION_ELEMENTS,
					ies->len, ies->data))
			goto fail_unlock_rcu;
	}
	ies = FUNC15(res->beacon_ies);
	if (ies) {
		if (!tsf && FUNC13(msg, NL80211_BSS_TSF, ies->tsf))
			goto fail_unlock_rcu;
		if (ies->len && FUNC10(msg, NL80211_BSS_BEACON_IES,
					ies->len, ies->data))
			goto fail_unlock_rcu;
	}
	FUNC17();

	if (res->beacon_interval &&
	    FUNC11(msg, NL80211_BSS_BEACON_INTERVAL, res->beacon_interval))
		goto nla_put_failure;
	if (FUNC11(msg, NL80211_BSS_CAPABILITY, res->capability) ||
	    FUNC12(msg, NL80211_BSS_FREQUENCY, res->channel->center_freq) ||
	    FUNC12(msg, NL80211_BSS_SEEN_MS_AGO,
			FUNC6(jiffies - intbss->ts)))
		goto nla_put_failure;

	switch (rdev->wiphy.signal_type) {
	case CFG80211_SIGNAL_TYPE_MBM:
		if (FUNC12(msg, NL80211_BSS_SIGNAL_MBM, res->signal))
			goto nla_put_failure;
		break;
	case CFG80211_SIGNAL_TYPE_UNSPEC:
		if (FUNC14(msg, NL80211_BSS_SIGNAL_UNSPEC, res->signal))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	switch (wdev->iftype) {
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_STATION:
		if (intbss == wdev->current_bss &&
		    FUNC12(msg, NL80211_BSS_STATUS,
				NL80211_BSS_STATUS_ASSOCIATED))
			goto nla_put_failure;
		break;
	case NL80211_IFTYPE_ADHOC:
		if (intbss == wdev->current_bss &&
		    FUNC12(msg, NL80211_BSS_STATUS,
				NL80211_BSS_STATUS_IBSS_JOINED))
			goto nla_put_failure;
		break;
	default:
		break;
	}

	FUNC8(msg, bss);

	return FUNC4(msg, hdr);

 fail_unlock_rcu:
	FUNC17();
 nla_put_failure:
	FUNC3(msg, hdr);
	return -EMSGSIZE;
}