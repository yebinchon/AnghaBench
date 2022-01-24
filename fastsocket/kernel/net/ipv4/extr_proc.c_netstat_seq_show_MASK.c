#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct net* private; } ;
struct TYPE_4__ {scalar_t__ ip_statistics; scalar_t__ net_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_6__ {int /*<<< orphan*/  entry; int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {int /*<<< orphan*/  entry; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 TYPE_3__* snmp4_ipextstats_list ; 
 TYPE_2__* snmp4_net_list ; 
 int /*<<< orphan*/ * FUNC3 (void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	int i;
	struct net *net = seq->private;

	FUNC2(seq, "TcpExt:");
	for (i = 0; snmp4_net_list[i].name != NULL; i++)
		FUNC0(seq, " %s", snmp4_net_list[i].name);

	FUNC2(seq, "\nTcpExt:");
	for (i = 0; snmp4_net_list[i].name != NULL; i++)
		FUNC0(seq, " %lu",
			   FUNC3((void **)net->mib.net_statistics,
					   snmp4_net_list[i].entry));

	FUNC2(seq, "\nIpExt:");
	for (i = 0; snmp4_ipextstats_list[i].name != NULL; i++)
		FUNC0(seq, " %s", snmp4_ipextstats_list[i].name);

	FUNC2(seq, "\nIpExt:");
	for (i = 0; snmp4_ipextstats_list[i].name != NULL; i++)
		FUNC0(seq, " %lu",
			   FUNC3((void **)net->mib.ip_statistics,
					   snmp4_ipextstats_list[i].entry));

	FUNC1(seq, '\n');
	return 0;
}