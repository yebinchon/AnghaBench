#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifmcaddr6 {int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_flags; TYPE_1__* idev; int /*<<< orphan*/  mca_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_MGM_REPORT ; 
 int /*<<< orphan*/  MAF_LAST_REPORTER ; 
 int /*<<< orphan*/  MAF_TIMER_RUNNING ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ifmcaddr6*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct ifmcaddr6 *ma = (struct ifmcaddr6 *) data;

	if (FUNC0(ma->idev))
		FUNC1(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);
	else
		FUNC3(ma->idev, ma);

	FUNC4(&ma->mca_lock);
	ma->mca_flags |=  MAF_LAST_REPORTER;
	ma->mca_flags &= ~MAF_TIMER_RUNNING;
	FUNC5(&ma->mca_lock);
	FUNC2(ma);
}