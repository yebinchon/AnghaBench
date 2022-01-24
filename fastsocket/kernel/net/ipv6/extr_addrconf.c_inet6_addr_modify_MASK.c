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
typedef  int u8 ;
typedef  void* u32 ;
struct inet6_ifaddr {int flags; TYPE_1__* idev; int /*<<< orphan*/  prefix_len; int /*<<< orphan*/  addr; int /*<<< orphan*/  lock; void* prefered_lft; void* valid_lft; int /*<<< orphan*/  tstamp; } ;
typedef  scalar_t__ clock_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long HZ ; 
 int IFA_F_DEPRECATED ; 
 int IFA_F_HOMEADDRESS ; 
 int IFA_F_NODAD ; 
 int IFA_F_PERMANENT ; 
 int IFA_F_TENTATIVE ; 
 void* RTF_EXPIRES ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 unsigned long FUNC2 (void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inet6_ifaddr*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inet6_ifaddr *ifp, u8 ifa_flags,
			     u32 prefered_lft, u32 valid_lft)
{
	u32 flags;
	clock_t expires;
	unsigned long timeout;

	if (!valid_lft || (prefered_lft > valid_lft))
		return -EINVAL;

	timeout = FUNC2(valid_lft, HZ);
	if (FUNC0(timeout)) {
		expires = FUNC5(timeout * HZ);
		valid_lft = timeout;
		flags = RTF_EXPIRES;
	} else {
		expires = 0;
		flags = 0;
		ifa_flags |= IFA_F_PERMANENT;
	}

	timeout = FUNC2(prefered_lft, HZ);
	if (FUNC0(timeout)) {
		if (timeout == 0)
			ifa_flags |= IFA_F_DEPRECATED;
		prefered_lft = timeout;
	}

	FUNC6(&ifp->lock);
	ifp->flags = (ifp->flags & ~(IFA_F_DEPRECATED | IFA_F_PERMANENT | IFA_F_NODAD | IFA_F_HOMEADDRESS)) | ifa_flags;
	ifp->tstamp = jiffies;
	ifp->valid_lft = valid_lft;
	ifp->prefered_lft = prefered_lft;

	FUNC7(&ifp->lock);
	if (!(ifp->flags&IFA_F_TENTATIVE))
		FUNC4(0, ifp);

	FUNC1(&ifp->addr, ifp->prefix_len, ifp->idev->dev,
			      expires, flags);
	FUNC3(0);

	return 0;
}