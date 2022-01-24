#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cap; int /*<<< orphan*/  vht_mcs; scalar_t__ vht_supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  ampdu_density; int /*<<< orphan*/  ampdu_factor; int /*<<< orphan*/  cap; int /*<<< orphan*/  mcs; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; TYPE_2__ vht_cap; TYPE_1__ ht_cap; } ;
struct ieee80211_rate {int flags; int /*<<< orphan*/  bitrate; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int IEEE80211_RATE_SHORT_PREAMBLE ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_HT_AMPDU_DENSITY ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_HT_AMPDU_FACTOR ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_HT_CAPA ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_HT_MCS_SET ; 
 int NL80211_BAND_ATTR_RATES ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_VHT_CAPA ; 
 int /*<<< orphan*/  NL80211_BAND_ATTR_VHT_MCS_SET ; 
 int /*<<< orphan*/  NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE ; 
 int /*<<< orphan*/  NL80211_BITRATE_ATTR_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *msg,
				      struct ieee80211_supported_band *sband)
{
	struct nlattr *nl_rates, *nl_rate;
	struct ieee80211_rate *rate;
	int i;

	/* add HT info */
	if (sband->ht_cap.ht_supported &&
	    (FUNC2(msg, NL80211_BAND_ATTR_HT_MCS_SET,
		     sizeof(sband->ht_cap.mcs),
		     &sband->ht_cap.mcs) ||
	     FUNC4(msg, NL80211_BAND_ATTR_HT_CAPA,
			 sband->ht_cap.cap) ||
	     FUNC6(msg, NL80211_BAND_ATTR_HT_AMPDU_FACTOR,
			sband->ht_cap.ampdu_factor) ||
	     FUNC6(msg, NL80211_BAND_ATTR_HT_AMPDU_DENSITY,
			sband->ht_cap.ampdu_density)))
		return -ENOBUFS;

	/* add VHT info */
	if (sband->vht_cap.vht_supported &&
	    (FUNC2(msg, NL80211_BAND_ATTR_VHT_MCS_SET,
		     sizeof(sband->vht_cap.vht_mcs),
		     &sband->vht_cap.vht_mcs) ||
	     FUNC5(msg, NL80211_BAND_ATTR_VHT_CAPA,
			 sband->vht_cap.cap)))
		return -ENOBUFS;

	/* add bitrates */
	nl_rates = FUNC1(msg, NL80211_BAND_ATTR_RATES);
	if (!nl_rates)
		return -ENOBUFS;

	for (i = 0; i < sband->n_bitrates; i++) {
		nl_rate = FUNC1(msg, i);
		if (!nl_rate)
			return -ENOBUFS;

		rate = &sband->bitrates[i];
		if (FUNC5(msg, NL80211_BITRATE_ATTR_RATE,
				rate->bitrate))
			return -ENOBUFS;
		if ((rate->flags & IEEE80211_RATE_SHORT_PREAMBLE) &&
		    FUNC3(msg,
				 NL80211_BITRATE_ATTR_2GHZ_SHORTPREAMBLE))
			return -ENOBUFS;

		FUNC0(msg, nl_rate);
	}

	FUNC0(msg, nl_rates);

	return 0;
}