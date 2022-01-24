#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_8__ {int flags; } ;
struct wiphy {int interface_modes; int flags; struct ieee80211_supported_band** bands; TYPE_3__* addresses; int /*<<< orphan*/  perm_addr; scalar_t__ max_acl_mac_addrs; int /*<<< orphan*/  n_addresses; scalar_t__ ap_sme_capa; TYPE_1__ wowlan; } ;
struct regulatory_request {char* alpha2; int /*<<< orphan*/  initiator; int /*<<< orphan*/  wiphy_idx; } ;
struct TYPE_11__ {int /*<<< orphan*/  cap; scalar_t__ ht_supported; } ;
struct ieee80211_supported_band {int band; int n_channels; int n_bitrates; TYPE_5__* channels; TYPE_4__ ht_cap; } ;
struct TYPE_13__ {scalar_t__ pattern_min_len; scalar_t__ pattern_max_len; scalar_t__ n_patterns; } ;
struct TYPE_14__ {int registered; int /*<<< orphan*/ * debugfsdir; int /*<<< orphan*/  dev; TYPE_6__ wowlan; } ;
struct cfg80211_registered_device {TYPE_7__ wiphy; int /*<<< orphan*/  list; int /*<<< orphan*/  rfkill; TYPE_2__* ops; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_12__ {int band; int /*<<< orphan*/  max_power; int /*<<< orphan*/  orig_mpwr; int /*<<< orphan*/  orig_mag; int /*<<< orphan*/  flags; int /*<<< orphan*/  orig_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  set_mac_acl; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_BAND_2GHZ ; 
 int IEEE80211_BAND_60GHZ ; 
 int /*<<< orphan*/  IEEE80211_HT_CAP_SGI_40 ; 
 int /*<<< orphan*/  IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int IEEE80211_NUM_BANDS ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_DRIVER ; 
 int NUM_NL80211_IFTYPES ; 
 scalar_t__ FUNC1 (int) ; 
 int WIPHY_FLAG_CUSTOM_REGULATORY ; 
 int WIPHY_FLAG_HAVE_AP_SME ; 
 int WIPHY_WOWLAN_GTK_REKEY_FAILURE ; 
 int WIPHY_WOWLAN_SUPPORTS_GTK_REKEY ; 
 int /*<<< orphan*/  FUNC2 (struct cfg80211_registered_device*) ; 
 scalar_t__ cfg80211_disable_40mhz_24ghz ; 
 int /*<<< orphan*/  cfg80211_mutex ; 
 int /*<<< orphan*/  cfg80211_rdev_list ; 
 int /*<<< orphan*/  cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct wiphy*) ; 
 int /*<<< orphan*/  ieee80211_debugfs_dir ; 
 int /*<<< orphan*/  FUNC8 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct regulatory_request*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC21 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC22 (struct wiphy*) ; 
 struct cfg80211_registered_device* FUNC23 (struct wiphy*) ; 
 int FUNC24 (struct wiphy*) ; 

int FUNC25(struct wiphy *wiphy)
{
	struct cfg80211_registered_device *rdev = FUNC23(wiphy);
	int res;
	enum ieee80211_band band;
	struct ieee80211_supported_band *sband;
	bool have_band = false;
	int i;
	u16 ifmodes = wiphy->interface_modes;

#ifdef CONFIG_PM
	if (WARN_ON((wiphy->wowlan.flags & WIPHY_WOWLAN_GTK_REKEY_FAILURE) &&
		    !(wiphy->wowlan.flags & WIPHY_WOWLAN_SUPPORTS_GTK_REKEY)))
		return -EINVAL;
#endif

	if (FUNC1(wiphy->ap_sme_capa &&
		    !(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME)))
		return -EINVAL;

	if (FUNC1(wiphy->addresses && !wiphy->n_addresses))
		return -EINVAL;

	if (FUNC1(wiphy->addresses &&
		    !FUNC9(wiphy->perm_addr) &&
		    FUNC12(wiphy->perm_addr, wiphy->addresses[0].addr,
			   ETH_ALEN)))
		return -EINVAL;

	if (FUNC1(wiphy->max_acl_mac_addrs &&
		    (!(wiphy->flags & WIPHY_FLAG_HAVE_AP_SME) ||
		     !rdev->ops->set_mac_acl)))
		return -EINVAL;

	if (wiphy->addresses)
		FUNC13(wiphy->perm_addr, wiphy->addresses[0].addr, ETH_ALEN);

	/* sanity check ifmodes */
	FUNC1(!ifmodes);
	ifmodes &= ((1 << NUM_NL80211_IFTYPES) - 1) & ~1;
	if (FUNC1(ifmodes != wiphy->interface_modes))
		wiphy->interface_modes = ifmodes;

	res = FUNC24(wiphy);
	if (res)
		return res;

	/* sanity check supported bands/channels */
	for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
		sband = wiphy->bands[band];
		if (!sband)
			continue;

		sband->band = band;
		if (FUNC1(!sband->n_channels))
			return -EINVAL;
		/*
		 * on 60gHz band, there are no legacy rates, so
		 * n_bitrates is 0
		 */
		if (FUNC1(band != IEEE80211_BAND_60GHZ &&
			    !sband->n_bitrates))
			return -EINVAL;

		/*
		 * Since cfg80211_disable_40mhz_24ghz is global, we can
		 * modify the sband's ht data even if the driver uses a
		 * global structure for that.
		 */
		if (cfg80211_disable_40mhz_24ghz &&
		    band == IEEE80211_BAND_2GHZ &&
		    sband->ht_cap.ht_supported) {
			sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SUP_WIDTH_20_40;
			sband->ht_cap.cap &= ~IEEE80211_HT_CAP_SGI_40;
		}

		/*
		 * Since we use a u32 for rate bitmaps in
		 * ieee80211_get_response_rate, we cannot
		 * have more than 32 legacy rates.
		 */
		if (FUNC1(sband->n_bitrates > 32))
			return -EINVAL;

		for (i = 0; i < sband->n_channels; i++) {
			sband->channels[i].orig_flags =
				sband->channels[i].flags;
			sband->channels[i].orig_mag = INT_MAX;
			sband->channels[i].orig_mpwr =
				sband->channels[i].max_power;
			sband->channels[i].band = band;
		}

		have_band = true;
	}

	if (!have_band) {
		FUNC1(1);
		return -EINVAL;
	}

#ifdef CONFIG_PM
	if (rdev->wiphy.wowlan.n_patterns) {
		if (WARN_ON(!rdev->wiphy.wowlan.pattern_min_len ||
			    rdev->wiphy.wowlan.pattern_min_len >
			    rdev->wiphy.wowlan.pattern_max_len))
			return -EINVAL;
	}
#endif

	/* check and set up bitrates */
	FUNC8(wiphy);

	FUNC14(&cfg80211_mutex);

	res = FUNC5(&rdev->wiphy.dev);
	if (res) {
		FUNC15(&cfg80211_mutex);
		return res;
	}

	/* set up regulatory info */
	FUNC22(wiphy);

	FUNC10(&rdev->list, &cfg80211_rdev_list);
	cfg80211_rdev_list_generation++;

	/* add to debugfs */
	rdev->wiphy.debugfsdir =
		FUNC3(FUNC20(&rdev->wiphy),
				   ieee80211_debugfs_dir);
	if (FUNC0(rdev->wiphy.debugfsdir))
		rdev->wiphy.debugfsdir = NULL;

	if (wiphy->flags & WIPHY_FLAG_CUSTOM_REGULATORY) {
		struct regulatory_request request;

		request.wiphy_idx = FUNC7(wiphy);
		request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
		request.alpha2[0] = '9';
		request.alpha2[1] = '9';

		FUNC16(&request);
	}

	FUNC2(rdev);
	FUNC15(&cfg80211_mutex);

	/*
	 * due to a locking dependency this has to be outside of the
	 * cfg80211_mutex lock
	 */
	res = FUNC17(rdev->rfkill);
	if (res) {
		FUNC6(&rdev->wiphy.dev);

		FUNC14(&cfg80211_mutex);
		FUNC4(rdev->wiphy.debugfsdir);
		FUNC11(&rdev->list);
		FUNC21(wiphy);
		FUNC15(&cfg80211_mutex);
		return res;
	}

	FUNC18();
	rdev->wiphy.registered = true;
	FUNC19();
	return 0;
}