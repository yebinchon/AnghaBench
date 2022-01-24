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
struct seq_file {struct net* private; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tw_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_prot ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*) ; 
 TYPE_1__ tcp_death_row ; 
 int /*<<< orphan*/  tcp_memory_allocated ; 
 int /*<<< orphan*/  tcp_orphan_count ; 
 int /*<<< orphan*/  tcp_prot ; 
 int /*<<< orphan*/  tcp_sockets_allocated ; 
 int /*<<< orphan*/  udp_memory_allocated ; 
 int /*<<< orphan*/  udp_prot ; 
 int /*<<< orphan*/  udplite_prot ; 

__attribute__((used)) static int FUNC9(struct seq_file *seq, void *v)
{
	struct net *net = seq->private;
	int orphans, sockets;

	FUNC3();
	orphans = FUNC5(&tcp_orphan_count);
	sockets = FUNC5(&tcp_sockets_allocated);
	FUNC4();

	FUNC8(seq);
	FUNC6(seq, "TCP: inuse %d orphan %d tw %d alloc %d mem %d\n",
		   FUNC7(net, &tcp_prot), orphans,
		   tcp_death_row.tw_count, sockets,
		   FUNC0(&tcp_memory_allocated));
	FUNC6(seq, "UDP: inuse %d mem %d\n",
		   FUNC7(net, &udp_prot),
		   FUNC0(&udp_memory_allocated));
	FUNC6(seq, "UDPLITE: inuse %d\n",
		   FUNC7(net, &udplite_prot));
	FUNC6(seq, "RAW: inuse %d\n",
		   FUNC7(net, &raw_prot));
	FUNC6(seq,  "FRAG: inuse %d memory %d\n",
			FUNC2(net), FUNC1(net));
	return 0;
}