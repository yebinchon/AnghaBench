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
struct TYPE_6__ {struct ieee80211_channel* chan; int /*<<< orphan*/  center_freq1; int /*<<< orphan*/  width; } ;
struct wireless_dev {scalar_t__ iftype; struct ieee80211_channel* channel; scalar_t__ mesh_id_len; int /*<<< orphan*/  ssid; TYPE_3__ preset_chandef; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct mesh_setup {TYPE_3__ chandef; scalar_t__ mesh_id_len; int /*<<< orphan*/  mesh_id; scalar_t__ is_secure; } ;
struct mesh_config {int dummy; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int flags; int /*<<< orphan*/  center_freq; } ;
struct TYPE_5__ {int flags; struct ieee80211_supported_band** bands; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_4__ {int /*<<< orphan*/  join_mesh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CHAN_MODE_SHARED ; 
 int EALREADY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_CHAN_DISABLED ; 
 int IEEE80211_CHAN_NO_IBSS ; 
 int IEEE80211_CHAN_PASSIVE_SCAN ; 
 int IEEE80211_CHAN_RADAR ; 
 scalar_t__ IEEE80211_MAX_MESH_ID_LEN ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 int IEEE80211_NUM_BANDS ; 
 int /*<<< orphan*/  NL80211_CHAN_WIDTH_20_NOHT ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int WIPHY_FLAG_MESH_AUTH ; 
 int FUNC2 (struct cfg80211_registered_device*,struct wireless_dev*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct cfg80211_registered_device*,struct net_device*,struct mesh_config const*,struct mesh_setup*) ; 

int FUNC6(struct cfg80211_registered_device *rdev,
			 struct net_device *dev,
			 struct mesh_setup *setup,
			 const struct mesh_config *conf)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	int err;

	FUNC1(IEEE80211_MAX_SSID_LEN != IEEE80211_MAX_MESH_ID_LEN);

	FUNC0(wdev);

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	if (!(rdev->wiphy.flags & WIPHY_FLAG_MESH_AUTH) &&
	      setup->is_secure)
		return -EOPNOTSUPP;

	if (wdev->mesh_id_len)
		return -EALREADY;

	if (!setup->mesh_id_len)
		return -EINVAL;

	if (!rdev->ops->join_mesh)
		return -EOPNOTSUPP;

	if (!setup->chandef.chan) {
		/* if no channel explicitly given, use preset channel */
		setup->chandef = wdev->preset_chandef;
	}

	if (!setup->chandef.chan) {
		/* if we don't have that either, use the first usable channel */
		enum ieee80211_band band;

		for (band = 0; band < IEEE80211_NUM_BANDS; band++) {
			struct ieee80211_supported_band *sband;
			struct ieee80211_channel *chan;
			int i;

			sband = rdev->wiphy.bands[band];
			if (!sband)
				continue;

			for (i = 0; i < sband->n_channels; i++) {
				chan = &sband->channels[i];
				if (chan->flags & (IEEE80211_CHAN_NO_IBSS |
						   IEEE80211_CHAN_PASSIVE_SCAN |
						   IEEE80211_CHAN_DISABLED |
						   IEEE80211_CHAN_RADAR))
					continue;
				setup->chandef.chan = chan;
				break;
			}

			if (setup->chandef.chan)
				break;
		}

		/* no usable channel ... */
		if (!setup->chandef.chan)
			return -EINVAL;

		setup->chandef.width = NL80211_CHAN_WIDTH_20_NOHT;
		setup->chandef.center_freq1 = setup->chandef.chan->center_freq;
	}

	if (!FUNC3(&rdev->wiphy, &setup->chandef))
		return -EINVAL;

	err = FUNC2(rdev, wdev, setup->chandef.chan,
				    CHAN_MODE_SHARED);
	if (err)
		return err;

	err = FUNC5(rdev, dev, conf, setup);
	if (!err) {
		FUNC4(wdev->ssid, setup->mesh_id, setup->mesh_id_len);
		wdev->mesh_id_len = setup->mesh_id_len;
		wdev->channel = setup->chandef.chan;
	}

	return err;
}