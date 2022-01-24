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
struct ipstats_mib {int dummy; } ;
struct TYPE_2__ {scalar_t__ ipv6; scalar_t__ icmpv6; scalar_t__ icmpv6msg; } ;
struct inet6_dev {TYPE_1__ stats; } ;
struct icmpv6msg_mib {int dummy; } ;
struct icmpv6_mib {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 scalar_t__ FUNC1 (void**,int) ; 

__attribute__((used)) static int FUNC2(struct inet6_dev *idev)
{
	if (FUNC1((void **)idev->stats.ipv6,
			  sizeof(struct ipstats_mib)) < 0)
		goto err_ip;
	if (FUNC1((void **)idev->stats.icmpv6,
			  sizeof(struct icmpv6_mib)) < 0)
		goto err_icmp;
	if (FUNC1((void **)idev->stats.icmpv6msg,
			  sizeof(struct icmpv6msg_mib)) < 0)
		goto err_icmpmsg;

	return 0;

err_icmpmsg:
	FUNC0((void **)idev->stats.icmpv6);
err_icmp:
	FUNC0((void **)idev->stats.ipv6);
err_ip:
	return -ENOMEM;
}