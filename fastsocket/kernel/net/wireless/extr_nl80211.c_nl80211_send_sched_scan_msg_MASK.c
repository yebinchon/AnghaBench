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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy_idx; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sk_buff *msg,
			    struct cfg80211_registered_device *rdev,
			    struct net_device *netdev,
			    u32 portid, u32 seq, int flags, u32 cmd)
{
	void *hdr;

	hdr = FUNC2(msg, portid, seq, flags, cmd);
	if (!hdr)
		return -1;

	if (FUNC3(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC3(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
		goto nla_put_failure;

	return FUNC1(msg, hdr);

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}