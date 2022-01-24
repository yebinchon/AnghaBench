#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long expires; } ;
struct ifmcaddr6 {int mca_flags; int /*<<< orphan*/  mca_lock; int /*<<< orphan*/  mca_refcnt; TYPE_2__ mca_timer; TYPE_1__* idev; int /*<<< orphan*/  mca_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_MGM_REPORT ; 
 unsigned long IGMP6_UNSOLICITED_IVAL ; 
 int MAF_LAST_REPORTER ; 
 int MAF_NOREPORT ; 
 int MAF_TIMER_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned long) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ifmcaddr6 *ma)
{
	unsigned long delay;

	if (ma->mca_flags & MAF_NOREPORT)
		return;

	FUNC3(&ma->mca_addr, ma->idev->dev, ICMPV6_MGM_REPORT);

	delay = FUNC5() % IGMP6_UNSOLICITED_IVAL;

	FUNC6(&ma->mca_lock);
	if (FUNC2(&ma->mca_timer)) {
		FUNC0(&ma->mca_refcnt);
		delay = ma->mca_timer.expires - jiffies;
	}

	if (!FUNC4(&ma->mca_timer, jiffies + delay))
		FUNC1(&ma->mca_refcnt);
	ma->mca_flags |= MAF_TIMER_RUNNING | MAF_LAST_REPORTER;
	FUNC7(&ma->mca_lock);
}