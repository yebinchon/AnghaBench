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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct ifmcaddr6 {int /*<<< orphan*/  mca_tstamp; int /*<<< orphan*/  mca_cstamp; int /*<<< orphan*/  mca_addr; TYPE_2__* idev; } ;
struct ifaddrmsg {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int /*<<< orphan*/  IFA_MULTICAST ; 
 int IFA_SITE ; 
 int /*<<< orphan*/  INFINITY_LIFE_TIME ; 
 int /*<<< orphan*/  RT_SCOPE_SITE ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 int FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlmsghdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct ifmcaddr6 *ifmca,
				u32 pid, u32 seq, int event, u16 flags)
{
	struct nlmsghdr  *nlh;
	u8 scope = RT_SCOPE_UNIVERSE;
	int ifindex = ifmca->idev->dev->ifindex;

	if (FUNC0(&ifmca->mca_addr) & IFA_SITE)
		scope = RT_SCOPE_SITE;

	nlh = FUNC4(skb, pid, seq, event, sizeof(struct ifaddrmsg), flags);
	if (nlh == NULL)
		return -EMSGSIZE;

	FUNC6(nlh, 128, IFA_F_PERMANENT, scope, ifindex);
	if (FUNC1(skb, IFA_MULTICAST, 16, &ifmca->mca_addr) < 0 ||
	    FUNC5(skb, ifmca->mca_cstamp, ifmca->mca_tstamp,
			  INFINITY_LIFE_TIME, INFINITY_LIFE_TIME) < 0) {
		FUNC2(skb, nlh);
		return -EMSGSIZE;
	}

	return FUNC3(skb, nlh);
}