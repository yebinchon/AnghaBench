#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_5__ {scalar_t__ udplite_statistics; scalar_t__ udp_statistics; scalar_t__ tcp_statistics; scalar_t__ ip_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_8__ {scalar_t__ entry; int /*<<< orphan*/ * name; } ;
struct TYPE_7__ {scalar_t__ entry; int /*<<< orphan*/ * name; } ;
struct TYPE_6__ {scalar_t__ entry; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORWARDING ; 
 scalar_t__ FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ TCP_MIB_MAXCONN ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 TYPE_4__* snmp4_ipstats_list ; 
 TYPE_3__* snmp4_tcp_list ; 
 TYPE_2__* snmp4_udp_list ; 
 int /*<<< orphan*/ * FUNC6 (void**,scalar_t__) ; 
 int /*<<< orphan*/  sysctl_ip_default_ttl ; 

__attribute__((used)) static int FUNC7(struct seq_file *seq, void *v)
{
	int i;
	struct net *net = seq->private;

	FUNC5(seq, "Ip: Forwarding DefaultTTL");

	for (i = 0; snmp4_ipstats_list[i].name != NULL; i++)
		FUNC3(seq, " %s", *snmp4_ipstats_list[i].name);

	FUNC3(seq, "\nIp: %d %d",
		   FUNC0(net, FORWARDING) ? 1 : 2,
		   sysctl_ip_default_ttl);

	for (i = 0; snmp4_ipstats_list[i].name != NULL; i++)
		FUNC3(seq, " %lu",
			   *FUNC6((void **)net->mib.ip_statistics,
					   snmp4_ipstats_list[i].entry));

	FUNC1(seq);	/* RFC 2011 compatibility */
	FUNC2(seq);

	FUNC5(seq, "\nTcp:");
	for (i = 0; snmp4_tcp_list[i].name != NULL; i++)
		FUNC3(seq, " %s", *snmp4_tcp_list[i].name);

	FUNC5(seq, "\nTcp:");
	for (i = 0; snmp4_tcp_list[i].name != NULL; i++) {
		/* MaxConn field is signed, RFC 2012 */
		if (snmp4_tcp_list[i].entry == TCP_MIB_MAXCONN)
			FUNC3(seq, " %ld",
				   *FUNC6((void **)net->mib.tcp_statistics,
						   snmp4_tcp_list[i].entry));
		else
			FUNC3(seq, " %lu",
				   *FUNC6((void **)net->mib.tcp_statistics,
						   snmp4_tcp_list[i].entry));
	}

	FUNC5(seq, "\nUdp:");
	for (i = 0; snmp4_udp_list[i].name != NULL; i++)
		FUNC3(seq, " %s", *snmp4_udp_list[i].name);

	FUNC5(seq, "\nUdp:");
	for (i = 0; snmp4_udp_list[i].name != NULL; i++)
		FUNC3(seq, " %lu",
			   *FUNC6((void **)net->mib.udp_statistics,
					   snmp4_udp_list[i].entry));

	/* the UDP and UDP-Lite MIBs are the same */
	FUNC5(seq, "\nUdpLite:");
	for (i = 0; snmp4_udp_list[i].name != NULL; i++)
		FUNC3(seq, " %s", *snmp4_udp_list[i].name);

	FUNC5(seq, "\nUdpLite:");
	for (i = 0; snmp4_udp_list[i].name != NULL; i++)
		FUNC3(seq, " %lu",
			   *FUNC6((void **)net->mib.udplite_statistics,
					   snmp4_udp_list[i].entry));

	FUNC4(seq, '\n');
	return 0;
}