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
struct nlmsghdr {int dummy; } ;
struct in_ifaddr {scalar_t__ ifa_local; int ifa_flags; scalar_t__ ifa_scope; scalar_t__ ifa_mask; struct in_ifaddr* ifa_next; int /*<<< orphan*/  ifa_address; struct in_device* ifa_dev; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int EINVAL ; 
 int IFA_F_SECONDARY ; 
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  RTM_NEWADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct in_ifaddr*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ifaddr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct in_ifaddr*) ; 
 int /*<<< orphan*/  inetaddr_chain ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct in_ifaddr*,struct nlmsghdr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct in_ifaddr *ifa, struct nlmsghdr *nlh,
			     u32 pid)
{
	struct in_device *in_dev = ifa->ifa_dev;
	struct in_ifaddr *ifa1, **ifap, **last_primary;

	FUNC0();

	if (!ifa->ifa_local) {
		FUNC2(ifa);
		return 0;
	}

	ifa->ifa_flags &= ~IFA_F_SECONDARY;
	last_primary = &in_dev->ifa_list;

	for (ifap = &in_dev->ifa_list; (ifa1 = *ifap) != NULL;
	     ifap = &ifa1->ifa_next) {
		if (!(ifa1->ifa_flags & IFA_F_SECONDARY) &&
		    ifa->ifa_scope <= ifa1->ifa_scope)
			last_primary = &ifa1->ifa_next;
		if (ifa1->ifa_mask == ifa->ifa_mask &&
		    FUNC3(ifa1->ifa_address, ifa)) {
			if (ifa1->ifa_local == ifa->ifa_local) {
				FUNC2(ifa);
				return -EEXIST;
			}
			if (ifa1->ifa_scope != ifa->ifa_scope) {
				FUNC2(ifa);
				return -EINVAL;
			}
			ifa->ifa_flags |= IFA_F_SECONDARY;
		}
	}

	if (!(ifa->ifa_flags & IFA_F_SECONDARY)) {
		FUNC4(ifa->ifa_local);
		ifap = last_primary;
	}

	ifa->ifa_next = *ifap;
	*ifap = ifa;

	/* Send message first, then call notifier.
	   Notifier will trigger FIB update, so that
	   listeners of netlink will know about new ifaddr */
	FUNC5(RTM_NEWADDR, ifa, nlh, pid);
	FUNC1(&inetaddr_chain, NETDEV_UP, ifa);

	return 0;
}