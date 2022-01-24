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
struct notifier_block {int dummy; } ;
struct netlink_notify {scalar_t__ protocol; scalar_t__ pid; int /*<<< orphan*/ * net; } ;

/* Variables and functions */
 scalar_t__ NETLINK_IP6_FW ; 
 unsigned long NETLINK_URELEASE ; 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  init_net ; 
 scalar_t__ peer_pid ; 
 int /*<<< orphan*/  queue_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct notifier_block *this,
		 unsigned long event, void *ptr)
{
	struct netlink_notify *n = ptr;

	if (event == NETLINK_URELEASE &&
	    n->protocol == NETLINK_IP6_FW && n->pid) {
		FUNC1(&queue_lock);
		if ((n->net == &init_net) && (n->pid == peer_pid))
			FUNC0();
		FUNC2(&queue_lock);
	}
	return NOTIFY_DONE;
}