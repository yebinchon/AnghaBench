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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;

/* Variables and functions */
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  ip_set_dump_done ; 
 int /*<<< orphan*/  ip_set_dump_start ; 
 int FUNC0 (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr const* const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sock *ctnl, struct sk_buff *skb,
	    const struct nlmsghdr *nlh,
	    const struct nlattr * const attr[])
{
	if (FUNC2(FUNC1(attr)))
		return -IPSET_ERR_PROTOCOL;

	{
		struct netlink_dump_control c = {
			.dump = ip_set_dump_start,
			.done = ip_set_dump_done,
		};
		return FUNC0(ctnl, skb, nlh, &c);
	}
}