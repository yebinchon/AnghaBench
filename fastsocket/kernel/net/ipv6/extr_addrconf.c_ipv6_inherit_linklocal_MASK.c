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
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFA_F_TENTATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct in6_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(struct inet6_dev *idev, struct net_device *link_dev)
{
	struct in6_addr lladdr;

	if (!FUNC1(link_dev, &lladdr, IFA_F_TENTATIVE)) {
		FUNC0(idev, &lladdr);
		return 0;
	}
	return -1;
}