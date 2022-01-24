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
struct inet6_dev {scalar_t__ mc_gq_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct inet6_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(unsigned long data)
{
	struct inet6_dev *idev = (struct inet6_dev *)data;

	idev->mc_gq_running = 0;
	FUNC1(idev, NULL);
	FUNC0(idev);
}