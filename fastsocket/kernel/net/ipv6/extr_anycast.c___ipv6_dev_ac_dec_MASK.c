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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifacaddr6* ac_list; } ;
struct in6_addr {int dummy; } ;
struct ifacaddr6 {scalar_t__ aca_users; TYPE_2__* aca_rt; int /*<<< orphan*/  aca_addr; struct ifacaddr6* aca_next; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; } ;
struct TYPE_4__ {TYPE_1__ u; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct ifacaddr6*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct inet6_dev *idev, struct in6_addr *addr)
{
	struct ifacaddr6 *aca, *prev_aca;

	FUNC5(&idev->lock);
	prev_aca = NULL;
	for (aca = idev->ac_list; aca; aca = aca->aca_next) {
		if (FUNC4(&aca->aca_addr, addr))
			break;
		prev_aca = aca;
	}
	if (!aca) {
		FUNC6(&idev->lock);
		return -ENOENT;
	}
	if (--aca->aca_users > 0) {
		FUNC6(&idev->lock);
		return 0;
	}
	if (prev_aca)
		prev_aca->aca_next = aca->aca_next;
	else
		idev->ac_list = aca->aca_next;
	FUNC6(&idev->lock);
	FUNC1(idev, &aca->aca_addr);

	FUNC2(&aca->aca_rt->u.dst);
	FUNC3(aca->aca_rt);

	FUNC0(aca);
	return 0;
}