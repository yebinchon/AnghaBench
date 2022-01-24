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
struct inet6_dev {int /*<<< orphan*/  mc_ifc_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct inet6_dev *idev, int delay)
{
	int tv = FUNC2() % delay;

	if (!FUNC1(&idev->mc_ifc_timer, jiffies+tv+2))
		FUNC0(idev);
}