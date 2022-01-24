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
struct net {int /*<<< orphan*/ * ipv4_sysctl_ping_group_range; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__ sysctl_local_ports ; 

__attribute__((used)) static void FUNC2(struct net *net, gid_t *low,
					  gid_t *high)
{
	gid_t *data = net->ipv4_sysctl_ping_group_range;
	unsigned seq;
	do {
		seq = FUNC0(&sysctl_local_ports.lock);

		*low = data[0];
		*high = data[1];
	} while (FUNC1(&sysctl_local_ports.lock, seq));
}