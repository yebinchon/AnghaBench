#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct wireless_dev {int iftype; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int /*<<< orphan*/  snd_pid; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int iftype; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  mgmt_tx; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_ACTION ; 
 size_t NL80211_ATTR_FRAME_MATCH ; 
 size_t NL80211_ATTR_FRAME_TYPE ; 
#define  NL80211_IFTYPE_ADHOC 135 
#define  NL80211_IFTYPE_AP 134 
#define  NL80211_IFTYPE_AP_VLAN 133 
#define  NL80211_IFTYPE_MESH_POINT 132 
#define  NL80211_IFTYPE_P2P_CLIENT 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int FUNC0 (struct wireless_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct wireless_dev *wdev = info->user_ptr[1];
	u16 frame_type = IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_ACTION;

	if (!info->attrs[NL80211_ATTR_FRAME_MATCH])
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_FRAME_TYPE])
		frame_type = FUNC2(info->attrs[NL80211_ATTR_FRAME_TYPE]);

	switch (wdev->iftype) {
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_MESH_POINT:
	case NL80211_IFTYPE_P2P_GO:
	case NL80211_IFTYPE_P2P_DEVICE:
		break;
	default:
		return -EOPNOTSUPP;
	}

	/* not much point in registering if we can't reply */
	if (!rdev->ops->mgmt_tx)
		return -EOPNOTSUPP;

	return FUNC0(wdev, info->snd_pid, frame_type,
			FUNC1(info->attrs[NL80211_ATTR_FRAME_MATCH]),
			FUNC3(info->attrs[NL80211_ATTR_FRAME_MATCH]));
}