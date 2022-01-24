#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  auth_type; } ;
struct TYPE_13__ {int default_key; int default_mgmt_key; int /*<<< orphan*/  keys; TYPE_4__ connect; } ;
struct wireless_dev {scalar_t__ iftype; int ps; int ps_timeout; TYPE_7__* wiphy; int /*<<< orphan*/  list; TYPE_5__ wext; int /*<<< orphan*/  mesh_id_up_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  cleanup_work; int /*<<< orphan*/  use_4addr; int /*<<< orphan*/  sme_state; struct net_device* netdev; int /*<<< orphan*/  identifier; int /*<<< orphan*/  mgmt_registrations_lock; int /*<<< orphan*/  mgmt_registrations; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  mtx; } ;
struct notifier_block {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct net_device {TYPE_1__ dev; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  features; struct wireless_dev* ieee80211_ptr; } ;
struct mesh_setup {int /*<<< orphan*/  mesh_id_len; int /*<<< orphan*/  mesh_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_11__ {TYPE_2__ dev; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  rfkill; int /*<<< orphan*/  devlist_generation; TYPE_6__* ops; int /*<<< orphan*/  opencount; int /*<<< orphan*/  sched_scan_mtx; TYPE_3__ wiphy; int /*<<< orphan*/  wdev_list; int /*<<< orphan*/  wdev_id; } ;
typedef  int /*<<< orphan*/  setup ;
struct TYPE_16__ {int /*<<< orphan*/  ext_priv_flags; } ;
struct TYPE_15__ {int flags; int interface_modes; } ;
struct TYPE_14__ {int /*<<< orphan*/  set_power_mgmt; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CFG80211_SME_IDLE ; 
 int EOPNOTSUPP ; 
 int ERFKILL ; 
 int /*<<< orphan*/  IFF_DONT_BRIDGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  NETDEV_DOWN 137 
#define  NETDEV_GOING_DOWN 136 
#define  NETDEV_POST_INIT 135 
#define  NETDEV_PRE_UP 134 
#define  NETDEV_REGISTER 133 
#define  NETDEV_UNREGISTER 132 
#define  NETDEV_UP 131 
 int /*<<< orphan*/  NETIF_F_NETNS_LOCAL ; 
 int /*<<< orphan*/  NL80211_AUTHTYPE_AUTOMATIC ; 
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_MESH_POINT 129 
 int NL80211_IFTYPE_P2P_CLIENT ; 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int WIPHY_FLAG_PS_ON_BY_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (struct cfg80211_registered_device*,struct net_device*,struct mesh_setup*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cfg80211_registered_device*,int) ; 
 int /*<<< orphan*/  cfg80211_ethtool_ops ; 
 int /*<<< orphan*/  FUNC8 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct cfg80211_registered_device*,int,int) ; 
 int /*<<< orphan*/  cfg80211_wq ; 
 int /*<<< orphan*/  default_mesh_config ; 
 int /*<<< orphan*/  default_mesh_setup ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct mesh_setup*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_8__* FUNC26 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*,int /*<<< orphan*/ *) ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (struct cfg80211_registered_device*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  wdev_cleanup_work ; 
 int /*<<< orphan*/  FUNC37 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC38 (struct wireless_dev*) ; 
 struct cfg80211_registered_device* FUNC39 (TYPE_7__*) ; 
 int /*<<< orphan*/  wiphy_type ; 

__attribute__((used)) static int FUNC40(struct notifier_block *nb,
					 unsigned long state,
					 void *ndev)
{
	struct net_device *dev = ndev;
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev;
	int ret;

	if (!wdev)
		return NOTIFY_DONE;

	rdev = FUNC39(wdev->wiphy);

	FUNC4(wdev->iftype == NL80211_IFTYPE_UNSPECIFIED);

	switch (state) {
	case NETDEV_POST_INIT:
		FUNC3(dev, &wiphy_type);
		break;
	case NETDEV_REGISTER:
		/*
		 * NB: cannot take rdev->mtx here because this may be
		 * called within code protected by it when interfaces
		 * are added with nl80211.
		 */
		FUNC23(&wdev->mtx);
		FUNC2(&wdev->cleanup_work, wdev_cleanup_work);
		FUNC1(&wdev->event_list);
		FUNC33(&wdev->event_lock);
		FUNC1(&wdev->mgmt_registrations);
		FUNC33(&wdev->mgmt_registrations_lock);

		FUNC24(&rdev->devlist_mtx);
		wdev->identifier = ++rdev->wdev_id;
		FUNC19(&wdev->list, &rdev->wdev_list);
		rdev->devlist_generation++;
		/* can only change netns with wiphy */
		dev->features |= NETIF_F_NETNS_LOCAL;

		if (FUNC35(&dev->dev.kobj, &rdev->wiphy.dev.kobj,
				      "phy80211")) {
			FUNC29("failed to add phy80211 symlink to netdev!\n");
		}
		wdev->netdev = dev;
		wdev->sme_state = CFG80211_SME_IDLE;
		FUNC25(&rdev->devlist_mtx);
#ifdef CONFIG_CFG80211_WEXT
		wdev->wext.default_key = -1;
		wdev->wext.default_mgmt_key = -1;
		wdev->wext.connect.auth_type = NL80211_AUTHTYPE_AUTOMATIC;
#endif

		if (wdev->wiphy->flags & WIPHY_FLAG_PS_ON_BY_DEFAULT)
			wdev->ps = true;
		else
			wdev->ps = false;
		/* allow mac80211 to determine the timeout */
		wdev->ps_timeout = -1;

#if 0 /* Not in RHEL */
		netdev_set_default_ethtool_ops(dev, &cfg80211_ethtool_ops);
#else
		if (!dev->ethtool_ops)
			dev->ethtool_ops = &cfg80211_ethtool_ops;
#endif

		if ((wdev->iftype == NL80211_IFTYPE_STATION ||
		     wdev->iftype == NL80211_IFTYPE_P2P_CLIENT ||
		     wdev->iftype == NL80211_IFTYPE_ADHOC) && !wdev->use_4addr)
			FUNC26(dev)->ext_priv_flags |= IFF_DONT_BRIDGE;
		break;
	case NETDEV_GOING_DOWN:
		FUNC9(rdev, wdev);
		break;
	case NETDEV_DOWN:
		FUNC15(rdev, wdev->iftype, -1);
		FUNC16(dev);
		FUNC30(cfg80211_wq, &wdev->cleanup_work);
		break;
	case NETDEV_UP:
		/*
		 * If we have a really quick DOWN/UP succession we may
		 * have this work still pending ... cancel it and see
		 * if it was pending, in which case we need to account
		 * for some of the work it would have done.
		 */
		if (FUNC6(&wdev->cleanup_work)) {
			FUNC24(&rdev->devlist_mtx);
			rdev->opencount--;
			FUNC25(&rdev->devlist_mtx);
			FUNC17(dev);
		}
		FUNC15(rdev, wdev->iftype, 1);
		FUNC10(rdev);
		FUNC24(&rdev->devlist_mtx);
		FUNC24(&rdev->sched_scan_mtx);
		FUNC37(wdev);
		switch (wdev->iftype) {
#ifdef CONFIG_CFG80211_WEXT
		case NL80211_IFTYPE_ADHOC:
			cfg80211_ibss_wext_join(rdev, wdev);
			break;
		case NL80211_IFTYPE_STATION:
			cfg80211_mgd_wext_connect(rdev, wdev);
			break;
#endif
#ifdef CONFIG_MAC80211_MESH
		case NL80211_IFTYPE_MESH_POINT:
			{
				/* backward compat code... */
				struct mesh_setup setup;
				memcpy(&setup, &default_mesh_setup,
						sizeof(setup));
				 /* back compat only needed for mesh_id */
				setup.mesh_id = wdev->ssid;
				setup.mesh_id_len = wdev->mesh_id_up_len;
				if (wdev->mesh_id_up_len)
					__cfg80211_join_mesh(rdev, dev,
							&setup,
							&default_mesh_config);
				break;
			}
#endif
		default:
			break;
		}
		FUNC38(wdev);
		FUNC25(&rdev->sched_scan_mtx);
		rdev->opencount++;
		FUNC25(&rdev->devlist_mtx);
		FUNC14(rdev);

		/*
		 * Configure power management to the driver here so that its
		 * correctly set also after interface type changes etc.
		 */
		if ((wdev->iftype == NL80211_IFTYPE_STATION ||
		     wdev->iftype == NL80211_IFTYPE_P2P_CLIENT) &&
		    rdev->ops->set_power_mgmt)
			if (FUNC31(rdev, dev, wdev->ps,
						wdev->ps_timeout)) {
				/* assume this means it's off */
				wdev->ps = false;
			}
		break;
	case NETDEV_UNREGISTER:
		/*
		 * NB: cannot take rdev->mtx here because this may be
		 * called within code protected by it when interfaces
		 * are removed with nl80211.
		 */
		FUNC24(&rdev->devlist_mtx);
		/*
		 * It is possible to get NETDEV_UNREGISTER
		 * multiple times. To detect that, check
		 * that the interface is still on the list
		 * of registered interfaces, and only then
		 * remove and clean it up.
		 */
		if (!FUNC21(&wdev->list)) {
			FUNC36(&dev->dev.kobj, "phy80211");
			FUNC20(&wdev->list);
			rdev->devlist_generation++;
			FUNC12(wdev);
#ifdef CONFIG_CFG80211_WEXT
			kfree(wdev->wext.keys);
#endif
		}
		FUNC25(&rdev->devlist_mtx);
		/*
		 * synchronise (so that we won't find this netdev
		 * from other code any more) and then clear the list
		 * head so that the above code can safely check for
		 * !list_empty() to avoid double-cleanup.
		 */
		FUNC34();
		FUNC1(&wdev->list);
		/*
		 * Ensure that all events have been processed and
		 * freed.
		 */
		FUNC13(wdev);
		break;
	case NETDEV_PRE_UP:
		if (!(wdev->wiphy->interface_modes & FUNC0(wdev->iftype)))
			return FUNC28(-EOPNOTSUPP);
		if (FUNC32(rdev->rfkill))
			return FUNC28(-ERFKILL);
		FUNC24(&rdev->devlist_mtx);
		ret = FUNC7(rdev, wdev->iftype);
		FUNC25(&rdev->devlist_mtx);
		if (ret)
			return FUNC28(ret);
		break;
	}

	return NOTIFY_DONE;
}