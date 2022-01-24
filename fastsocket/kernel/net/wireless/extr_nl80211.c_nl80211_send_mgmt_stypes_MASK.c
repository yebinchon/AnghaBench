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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ieee80211_txrx_stypes {int tx; int rx; } ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int ENOBUFS ; 
 int IEEE80211_FTYPE_MGMT ; 
 int /*<<< orphan*/  NL80211_ATTR_FRAME_TYPE ; 
 int NL80211_ATTR_RX_FRAME_TYPES ; 
 int NL80211_ATTR_TX_FRAME_TYPES ; 
 int NUM_NL80211_IFTYPES ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct sk_buff *msg,
			 const struct ieee80211_txrx_stypes *mgmt_stypes)
{
	u16 stypes;
	struct nlattr *nl_ftypes, *nl_ifs;
	enum nl80211_iftype ift;
	int i;

	if (!mgmt_stypes)
		return 0;

	nl_ifs = FUNC1(msg, NL80211_ATTR_TX_FRAME_TYPES);
	if (!nl_ifs)
		return -ENOBUFS;

	for (ift = 0; ift < NUM_NL80211_IFTYPES; ift++) {
		nl_ftypes = FUNC1(msg, ift);
		if (!nl_ftypes)
			return -ENOBUFS;
		i = 0;
		stypes = mgmt_stypes[ift].tx;
		while (stypes) {
			if ((stypes & 1) &&
			    FUNC2(msg, NL80211_ATTR_FRAME_TYPE,
					(i << 4) | IEEE80211_FTYPE_MGMT))
				return -ENOBUFS;
			stypes >>= 1;
			i++;
		}
		FUNC0(msg, nl_ftypes);
	}

	FUNC0(msg, nl_ifs);

	nl_ifs = FUNC1(msg, NL80211_ATTR_RX_FRAME_TYPES);
	if (!nl_ifs)
		return -ENOBUFS;

	for (ift = 0; ift < NUM_NL80211_IFTYPES; ift++) {
		nl_ftypes = FUNC1(msg, ift);
		if (!nl_ftypes)
			return -ENOBUFS;
		i = 0;
		stypes = mgmt_stypes[ift].rx;
		while (stypes) {
			if ((stypes & 1) &&
			    FUNC2(msg, NL80211_ATTR_FRAME_TYPE,
					(i << 4) | IEEE80211_FTYPE_MGMT))
				return -ENOBUFS;
			stypes >>= 1;
			i++;
		}
		FUNC0(msg, nl_ftypes);
	}
	FUNC0(msg, nl_ifs);

	return 0;
}