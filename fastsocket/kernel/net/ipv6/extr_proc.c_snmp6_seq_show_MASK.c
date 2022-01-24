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
struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {scalar_t__ udplite_stats_in6; scalar_t__ udp_stats_in6; scalar_t__ icmpv6msg_statistics; scalar_t__ icmpv6_statistics; scalar_t__ ipv6_statistics; } ;
struct net {TYPE_1__ mib; } ;

/* Variables and functions */
 int /*<<< orphan*/  snmp6_icmp6_list ; 
 int /*<<< orphan*/  snmp6_ipstats_list ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snmp6_udp6_list ; 
 int /*<<< orphan*/  snmp6_udplite6_list ; 

__attribute__((used)) static int FUNC2(struct seq_file *seq, void *v)
{
	struct net *net = (struct net *)seq->private;

	FUNC1(seq, (void **)net->mib.ipv6_statistics,
			    snmp6_ipstats_list);
	FUNC1(seq, (void **)net->mib.icmpv6_statistics,
			    snmp6_icmp6_list);
	FUNC0(seq, (void **)net->mib.icmpv6msg_statistics);
	FUNC1(seq, (void **)net->mib.udp_stats_in6,
			    snmp6_udp6_list);
	FUNC1(seq, (void **)net->mib.udplite_stats_in6,
			    snmp6_udplite6_list);
	return 0;
}