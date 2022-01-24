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
struct sk_buff {int dummy; } ;
struct audit_netlink_list {int pid; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  audit_cmd_mutex ; 
 int /*<<< orphan*/  audit_sock ; 
 int /*<<< orphan*/  FUNC1 (struct audit_netlink_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int,int /*<<< orphan*/ ) ; 

int FUNC5(void *_dest)
{
	struct audit_netlink_list *dest = _dest;
	int pid = dest->pid;
	struct sk_buff *skb;

	/* wait for parent to finish and send an ACK */
	FUNC2(&audit_cmd_mutex);
	FUNC3(&audit_cmd_mutex);

	while ((skb = FUNC0(&dest->q)) != NULL)
		FUNC4(audit_sock, skb, pid, 0);

	FUNC1(dest);

	return 0;
}