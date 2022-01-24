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
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct sk_buff *skb)
{
	struct nlmsghdr *nlh = FUNC1(skb);

	if (nlh->nlmsg_len < sizeof(*nlh) || skb->len < nlh->nlmsg_len)
		return;

	if (FUNC2(skb, CAP_NET_ADMIN))
		FUNC0(-EPERM);

	/* Eventually we might send routing messages too */

	FUNC0(-EINVAL);
}