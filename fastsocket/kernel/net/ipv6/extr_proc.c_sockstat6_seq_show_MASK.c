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
struct seq_file {struct net* private; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  rawv6_prot ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcpv6_prot ; 
 int /*<<< orphan*/  udplitev6_prot ; 
 int /*<<< orphan*/  udpv6_prot ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, void *v)
{
	struct net *net = seq->private;

	FUNC2(seq, "TCP6: inuse %d\n",
		       FUNC3(net, &tcpv6_prot));
	FUNC2(seq, "UDP6: inuse %d\n",
		       FUNC3(net, &udpv6_prot));
	FUNC2(seq, "UDPLITE6: inuse %d\n",
			FUNC3(net, &udplitev6_prot));
	FUNC2(seq, "RAW6: inuse %d\n",
		       FUNC3(net, &rawv6_prot));
	FUNC2(seq, "FRAG6: inuse %d memory %d\n",
		       FUNC1(net), FUNC0(net));
	return 0;
}