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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_CMD_PROTOCOL ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_PROTOCOL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct sock *ctnl, struct sk_buff *skb,
		const struct nlmsghdr *nlh,
		const struct nlattr * const attr[])
{
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	int ret = 0;

	if (FUNC8(attr[IPSET_ATTR_PROTOCOL] == NULL))
		return -IPSET_ERR_PROTOCOL;

	skb2 = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL)
		return -ENOMEM;

	nlh2 = FUNC7(skb2, FUNC0(skb).pid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_PROTOCOL);
	if (!nlh2)
		goto nlmsg_failure;
	FUNC1(skb2, IPSET_ATTR_PROTOCOL, IPSET_PROTOCOL);
	FUNC5(skb2, nlh2);

	ret = FUNC3(ctnl, skb2, FUNC0(skb).pid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC4(skb2, nlh2);
nlmsg_failure:
	FUNC2(skb2);
	return -EMSGSIZE;
}