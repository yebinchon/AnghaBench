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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet6_ifaddr {int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  unsigned long __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  IFA_F_DEPRECATED ; 
 int /*<<< orphan*/  IFA_F_PERMANENT ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_ifaddr*) ; 
 int FUNC2 (struct inet6_ifaddr*) ; 
 scalar_t__ RTF_EXPIRES ; 
 struct net_device* FUNC3 (struct net*,int) ; 
 struct inet6_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_ifaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct net_device*,scalar_t__,scalar_t__) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inet6_ifaddr*) ; 
 struct inet6_ifaddr* FUNC11 (struct inet6_dev*,struct in6_addr*,unsigned int,int,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int FUNC12 (struct in6_addr*) ; 
 scalar_t__ FUNC13 (unsigned long) ; 

__attribute__((used)) static int FUNC14(struct net *net, int ifindex, struct in6_addr *pfx,
			  unsigned int plen, __u8 ifa_flags, __u32 prefered_lft,
			  __u32 valid_lft)
{
	struct inet6_ifaddr *ifp;
	struct inet6_dev *idev;
	struct net_device *dev;
	int scope;
	u32 flags;
	clock_t expires;
	unsigned long timeout;

	FUNC0();

	if (plen > 128)
		return -EINVAL;

	/* check the lifetime */
	if (!valid_lft || prefered_lft > valid_lft)
		return -EINVAL;

	dev = FUNC3(net, ifindex);
	if (!dev)
		return -ENODEV;

	if ((idev = FUNC4(dev)) == NULL)
		return -ENOBUFS;

	scope = FUNC12(pfx);

	timeout = FUNC8(valid_lft, HZ);
	if (FUNC6(timeout)) {
		expires = FUNC13(timeout * HZ);
		valid_lft = timeout;
		flags = RTF_EXPIRES;
	} else {
		expires = 0;
		flags = 0;
		ifa_flags |= IFA_F_PERMANENT;
	}

	timeout = FUNC8(prefered_lft, HZ);
	if (FUNC6(timeout)) {
		if (timeout == 0)
			ifa_flags |= IFA_F_DEPRECATED;
		prefered_lft = timeout;
	}

	ifp = FUNC11(idev, pfx, plen, scope, ifa_flags, valid_lft,
			    prefered_lft);

	if (!FUNC1(ifp)) {
		FUNC7(&ifp->addr, ifp->prefix_len, dev,
				      expires, flags);
		/*
		 * Note that section 3.1 of RFC 4429 indicates
		 * that the Optimistic flag should not be set for
		 * manually configured addresses
		 */
		FUNC5(ifp, 0);
		FUNC10(ifp);
		FUNC9(0);
		return 0;
	}

	return FUNC2(ifp);
}