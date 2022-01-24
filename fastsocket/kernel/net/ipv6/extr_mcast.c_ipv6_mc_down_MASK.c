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
struct inet6_dev {int /*<<< orphan*/  lock; struct ifmcaddr6* mc_list; int /*<<< orphan*/  mc_gq_timer; scalar_t__ mc_gq_running; int /*<<< orphan*/  mc_ifc_timer; scalar_t__ mc_ifc_count; } ;
struct ifmcaddr6 {struct ifmcaddr6* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct inet6_dev *idev)
{
	struct ifmcaddr6 *i;

	/* Withdraw multicast list */

	FUNC4(&idev->lock);
	idev->mc_ifc_count = 0;
	if (FUNC1(&idev->mc_ifc_timer))
		FUNC0(idev);
	idev->mc_gq_running = 0;
	if (FUNC1(&idev->mc_gq_timer))
		FUNC0(idev);

	for (i = idev->mc_list; i; i=i->next)
		FUNC2(i);
	FUNC5(&idev->lock);

	FUNC3(idev);
}