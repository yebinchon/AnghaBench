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
struct TYPE_2__ {scalar_t__ ipv6; scalar_t__ icmpv6; scalar_t__ icmpv6msg; } ;
struct inet6_dev {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 

__attribute__((used)) static void FUNC1(struct inet6_dev *idev)
{
	FUNC0((void **)idev->stats.icmpv6msg);
	FUNC0((void **)idev->stats.icmpv6);
	FUNC0((void **)idev->stats.ipv6);
}