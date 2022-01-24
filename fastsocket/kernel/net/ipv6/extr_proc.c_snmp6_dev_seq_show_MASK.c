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
struct seq_file {scalar_t__ private; } ;
struct TYPE_4__ {scalar_t__ icmpv6msg; scalar_t__ icmpv6; scalar_t__ ipv6; } ;
struct inet6_dev {TYPE_2__ stats; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snmp6_icmp6_list ; 
 int /*<<< orphan*/  snmp6_ipstats_list ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,void**) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct inet6_dev *idev = (struct inet6_dev *)seq->private;

	FUNC0(seq, "%-32s\t%u\n", "ifIndex", idev->dev->ifindex);
	FUNC2(seq, (void **)idev->stats.ipv6, snmp6_ipstats_list);
	FUNC2(seq, (void **)idev->stats.icmpv6, snmp6_icmp6_list);
	FUNC1(seq, (void **)idev->stats.icmpv6msg);
	return 0;
}