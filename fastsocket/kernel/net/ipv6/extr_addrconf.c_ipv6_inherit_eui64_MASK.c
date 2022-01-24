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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ s6_addr; } ;
struct inet6_ifaddr {scalar_t__ scope; int flags; TYPE_1__ addr; struct inet6_ifaddr* if_next; } ;
struct inet6_dev {int /*<<< orphan*/  lock; struct inet6_ifaddr* addr_list; } ;

/* Variables and functions */
 int IFA_F_TENTATIVE ; 
 scalar_t__ IFA_LINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(u8 *eui, struct inet6_dev *idev)
{
	int err = -1;
	struct inet6_ifaddr *ifp;

	FUNC1(&idev->lock);
	for (ifp=idev->addr_list; ifp; ifp=ifp->if_next) {
		if (ifp->scope == IFA_LINK && !(ifp->flags&IFA_F_TENTATIVE)) {
			FUNC0(eui, ifp->addr.s6_addr+8, 8);
			err = 0;
			break;
		}
	}
	FUNC2(&idev->lock);
	return err;
}