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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet6_ifaddr {int flags; scalar_t__ prefered_lft; scalar_t__ valid_lft; long tstamp; int /*<<< orphan*/  cstamp; int /*<<< orphan*/  addr; TYPE_2__* idev; int /*<<< orphan*/  scope; int /*<<< orphan*/  prefix_len; } ;
struct ifaddrmsg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 long HZ ; 
 int /*<<< orphan*/  IFA_ADDRESS ; 
 int IFA_F_PERMANENT ; 
 scalar_t__ INFINITY_LIFE_TIME ; 
 long jiffies ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct nlmsghdr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct inet6_ifaddr *ifa,
			     u32 pid, u32 seq, int event, unsigned int flags)
{
	struct nlmsghdr  *nlh;
	u32 preferred, valid;

	nlh = FUNC3(skb, pid, seq, event, sizeof(struct ifaddrmsg), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	FUNC5(nlh, ifa->prefix_len, ifa->flags, FUNC6(ifa->scope),
		      ifa->idev->dev->ifindex);

	if (!(ifa->flags&IFA_F_PERMANENT)) {
		preferred = ifa->prefered_lft;
		valid = ifa->valid_lft;
		if (preferred != INFINITY_LIFE_TIME) {
			long tval = (jiffies - ifa->tstamp)/HZ;
			if (preferred > tval)
				preferred -= tval;
			else
				preferred = 0;
			if (valid != INFINITY_LIFE_TIME)
				valid -= tval;
		}
	} else {
		preferred = INFINITY_LIFE_TIME;
		valid = INFINITY_LIFE_TIME;
	}

	if (FUNC0(skb, IFA_ADDRESS, 16, &ifa->addr) < 0 ||
	    FUNC4(skb, ifa->cstamp, ifa->tstamp, preferred, valid) < 0) {
		FUNC1(skb, nlh);
		return -EMSGSIZE;
	}

	return FUNC2(skb, nlh);
}