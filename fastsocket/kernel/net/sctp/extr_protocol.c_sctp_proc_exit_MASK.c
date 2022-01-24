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
struct TYPE_2__ {int /*<<< orphan*/  proc_net; } ;

/* Variables and functions */
 TYPE_1__ init_net ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * proc_net_sctp ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sctp_sockets_allocated ; 

__attribute__((used)) static void FUNC6(void)
{
#ifdef CONFIG_PROC_FS
	sctp_snmp_proc_exit();
	sctp_eps_proc_exit();
	sctp_assocs_proc_exit();
	sctp_remaddr_proc_exit();

	if (proc_net_sctp) {
		proc_net_sctp = NULL;
		remove_proc_entry("sctp", init_net.proc_net);
	}
#endif
	FUNC0(&sctp_sockets_allocated);
}