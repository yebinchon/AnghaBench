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
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int iftype; int use_4addr; int /*<<< orphan*/  mesh_id_up_len; int /*<<< orphan*/  ssid; } ;
struct vif_params {int use_4addr; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {struct wireless_dev* ieee80211_ptr; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ IEEE80211_MAX_MESH_ID_LEN ; 
 scalar_t__ IEEE80211_MAX_SSID_LEN ; 
 size_t NL80211_ATTR_4ADDR ; 
 size_t NL80211_ATTR_IFTYPE ; 
 size_t NL80211_ATTR_MESH_ID ; 
 size_t NL80211_ATTR_MNTR_FLAGS ; 
 int NL80211_IFTYPE_MAX ; 
 int NL80211_IFTYPE_MESH_POINT ; 
 int NL80211_IFTYPE_MONITOR ; 
 int FUNC1 (struct net_device*,struct net_device*,int,int /*<<< orphan*/ *,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vif_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct vif_params params;
	int err;
	enum nl80211_iftype otype, ntype;
	struct net_device *dev = info->user_ptr[1];
	u32 _flags, *flags = NULL;
	bool change = false;

	FUNC3(&params, 0, sizeof(params));

	otype = ntype = dev->ieee80211_ptr->iftype;

	if (info->attrs[NL80211_ATTR_IFTYPE]) {
		ntype = FUNC7(info->attrs[NL80211_ATTR_IFTYPE]);
		if (otype != ntype)
			change = true;
		if (ntype > NL80211_IFTYPE_MAX)
			return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_MESH_ID]) {
		struct wireless_dev *wdev = dev->ieee80211_ptr;

		if (ntype != NL80211_IFTYPE_MESH_POINT)
			return -EINVAL;
		if (FUNC4(dev))
			return -EBUSY;

		FUNC11(wdev);
		FUNC0(IEEE80211_MAX_SSID_LEN !=
			     IEEE80211_MAX_MESH_ID_LEN);
		wdev->mesh_id_up_len =
			FUNC9(info->attrs[NL80211_ATTR_MESH_ID]);
		FUNC2(wdev->ssid, FUNC6(info->attrs[NL80211_ATTR_MESH_ID]),
		       wdev->mesh_id_up_len);
		FUNC12(wdev);
	}

	if (info->attrs[NL80211_ATTR_4ADDR]) {
		params.use_4addr = !!FUNC8(info->attrs[NL80211_ATTR_4ADDR]);
		change = true;
		err = FUNC5(rdev, dev, params.use_4addr, ntype);
		if (err)
			return err;
	} else {
		params.use_4addr = -1;
	}

	if (info->attrs[NL80211_ATTR_MNTR_FLAGS]) {
		if (ntype != NL80211_IFTYPE_MONITOR)
			return -EINVAL;
		err = FUNC10(info->attrs[NL80211_ATTR_MNTR_FLAGS],
					  &_flags);
		if (err)
			return err;

		flags = &_flags;
		change = true;
	}

	if (change)
		err = FUNC1(rdev, dev, ntype, flags, &params);
	else
		err = 0;

	if (!err && params.use_4addr != -1)
		dev->ieee80211_ptr->use_4addr = params.use_4addr;

	return err;
}