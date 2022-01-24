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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct net_device {TYPE_2__ wiphy; int /*<<< orphan*/  ifindex; TYPE_1__* ops; } ;
struct get_key_cookie {int idx; scalar_t__ error; struct sk_buff* msg; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_pid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; int /*<<< orphan*/  ifindex; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  get_key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 size_t NL80211_ATTR_KEY_IDX ; 
 size_t NL80211_ATTR_KEY_TYPE ; 
 size_t NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_KEY ; 
 scalar_t__ NL80211_KEYTYPE_GROUP ; 
 scalar_t__ NL80211_KEYTYPE_PAIRWISE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 scalar_t__ NUM_NL80211_KEYTYPES ; 
 int FUNC1 (void*) ; 
 int WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  get_key_callback ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,size_t,int /*<<< orphan*/ ,int const*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*,struct net_device*,int,int,int const*,struct get_key_cookie*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	int err;
	struct net_device *dev = info->user_ptr[1];
	u8 key_idx = 0;
	const u8 *mac_addr = NULL;
	bool pairwise;
	struct get_key_cookie cookie = {
		.error = 0,
	};
	void *hdr;
	struct sk_buff *msg;

	if (info->attrs[NL80211_ATTR_KEY_IDX])
		key_idx = FUNC7(info->attrs[NL80211_ATTR_KEY_IDX]);

	if (key_idx > 5)
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_MAC])
		mac_addr = FUNC5(info->attrs[NL80211_ATTR_MAC]);

	pairwise = !!mac_addr;
	if (info->attrs[NL80211_ATTR_KEY_TYPE]) {
		u32 kt = FUNC6(info->attrs[NL80211_ATTR_KEY_TYPE]);
		if (kt >= NUM_NL80211_KEYTYPES)
			return -EINVAL;
		if (kt != NL80211_KEYTYPE_GROUP &&
		    kt != NL80211_KEYTYPE_PAIRWISE)
			return -EINVAL;
		pairwise = kt == NL80211_KEYTYPE_PAIRWISE;
	}

	if (!rdev->ops->get_key)
		return -EOPNOTSUPP;

	msg = FUNC12(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC4(msg, info->snd_pid, info->snd_seq, 0,
			     NL80211_CMD_NEW_KEY);
	if (FUNC0(hdr))
		return FUNC1(hdr);

	cookie.msg = msg;
	cookie.idx = key_idx;

	if (FUNC9(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC10(msg, NL80211_ATTR_KEY_IDX, key_idx))
		goto nla_put_failure;
	if (mac_addr &&
	    FUNC8(msg, NL80211_ATTR_MAC, ETH_ALEN, mac_addr))
		goto nla_put_failure;

	if (pairwise && mac_addr &&
	    !(rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN))
		return -ENOENT;

	err = FUNC13(rdev, dev, key_idx, pairwise, mac_addr, &cookie,
			   get_key_callback);

	if (err)
		goto free_msg;

	if (cookie.error)
		goto nla_put_failure;

	FUNC2(msg, hdr);
	return FUNC3(msg, info);

 nla_put_failure:
	err = -ENOBUFS;
 free_msg:
	FUNC11(msg);
	return err;
}