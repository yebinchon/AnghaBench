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
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int /*<<< orphan*/  list; int /*<<< orphan*/  identifier; int /*<<< orphan*/  mgmt_registrations_lock; int /*<<< orphan*/  mgmt_registrations; int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; int /*<<< orphan*/  mtx; int /*<<< orphan*/  mesh_id_up_len; int /*<<< orphan*/  ssid; } ;
struct vif_params {int use_4addr; int /*<<< orphan*/  macaddr; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; int /*<<< orphan*/ ** attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_4__ {int interface_modes; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  devlist_mtx; int /*<<< orphan*/  devlist_generation; int /*<<< orphan*/  wdev_list; int /*<<< orphan*/  wdev_id; TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int /*<<< orphan*/  add_virtual_intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_MAX_MESH_ID_LEN ; 
 int /*<<< orphan*/  IEEE80211_MAX_SSID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct wireless_dev*) ; 
 size_t NL80211_ATTR_4ADDR ; 
 size_t NL80211_ATTR_IFNAME ; 
 size_t NL80211_ATTR_IFTYPE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_MESH_ID ; 
 size_t NL80211_ATTR_MNTR_FLAGS ; 
 int NL80211_IFTYPE_MAX ; 
#define  NL80211_IFTYPE_MESH_POINT 129 
 int NL80211_IFTYPE_MONITOR ; 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC3 (struct wireless_dev*) ; 
 int FUNC4 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vif_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int FUNC13 (struct cfg80211_registered_device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct wireless_dev* FUNC22 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC26(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct vif_params params;
	struct wireless_dev *wdev;
	struct sk_buff *msg;
	int err;
	enum nl80211_iftype type = NL80211_IFTYPE_UNSPECIFIED;
	u32 flags;

	FUNC8(&params, 0, sizeof(params));

	if (!info->attrs[NL80211_ATTR_IFNAME])
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_IFTYPE]) {
		type = FUNC15(info->attrs[NL80211_ATTR_IFTYPE]);
		if (type > NL80211_IFTYPE_MAX)
			return -EINVAL;
	}

	if (!rdev->ops->add_virtual_intf ||
	    !(rdev->wiphy.interface_modes & (1 << type)))
		return -EOPNOTSUPP;

	if (type == NL80211_IFTYPE_P2P_DEVICE && info->attrs[NL80211_ATTR_MAC]) {
		FUNC18(params.macaddr, info->attrs[NL80211_ATTR_MAC],
			   ETH_ALEN);
		if (!FUNC5(params.macaddr))
			return -EADDRNOTAVAIL;
	}

	if (info->attrs[NL80211_ATTR_4ADDR]) {
		params.use_4addr = !!FUNC16(info->attrs[NL80211_ATTR_4ADDR]);
		err = FUNC13(rdev, NULL, params.use_4addr, type);
		if (err)
			return err;
	}

	msg = FUNC20(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	err = FUNC21(type == NL80211_IFTYPE_MONITOR ?
				  info->attrs[NL80211_ATTR_MNTR_FLAGS] : NULL,
				  &flags);
	wdev = FUNC22(rdev,
				FUNC14(info->attrs[NL80211_ATTR_IFNAME]),
				type, err ? NULL : &flags, &params);
	if (FUNC2(wdev)) {
		FUNC19(msg);
		return FUNC3(wdev);
	}

	switch (type) {
	case NL80211_IFTYPE_MESH_POINT:
		if (!info->attrs[NL80211_ATTR_MESH_ID])
			break;
		FUNC24(wdev);
		FUNC0(IEEE80211_MAX_SSID_LEN !=
			     IEEE80211_MAX_MESH_ID_LEN);
		wdev->mesh_id_up_len =
			FUNC17(info->attrs[NL80211_ATTR_MESH_ID]);
		FUNC7(wdev->ssid, FUNC14(info->attrs[NL80211_ATTR_MESH_ID]),
		       wdev->mesh_id_up_len);
		FUNC25(wdev);
		break;
	case NL80211_IFTYPE_P2P_DEVICE:
		/*
		 * P2P Device doesn't have a netdev, so doesn't go
		 * through the netdev notifier and must be added here
		 */
		FUNC9(&wdev->mtx);
		FUNC1(&wdev->event_list);
		FUNC23(&wdev->event_lock);
		FUNC1(&wdev->mgmt_registrations);
		FUNC23(&wdev->mgmt_registrations_lock);

		FUNC10(&rdev->devlist_mtx);
		wdev->identifier = ++rdev->wdev_id;
		FUNC6(&wdev->list, &rdev->wdev_list);
		rdev->devlist_generation++;
		FUNC11(&rdev->devlist_mtx);
		break;
	default:
		break;
	}

	if (FUNC12(msg, info->snd_pid, info->snd_seq, 0,
			       rdev, wdev) < 0) {
		FUNC19(msg);
		return -ENOBUFS;
	}

	return FUNC4(msg, info);
}