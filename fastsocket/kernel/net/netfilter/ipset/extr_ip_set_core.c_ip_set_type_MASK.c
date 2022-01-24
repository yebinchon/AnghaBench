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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_len; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_FAMILY ; 
 size_t IPSET_ATTR_PROTOCOL ; 
 size_t IPSET_ATTR_REVISION ; 
 size_t IPSET_ATTR_REVISION_MIN ; 
 size_t IPSET_ATTR_TYPENAME ; 
 int /*<<< orphan*/  IPSET_CMD_TYPE ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_PROTOCOL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr const* const) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nlattr const* const*) ; 
 struct nlmsghdr* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct sock *ctnl, struct sk_buff *skb,
	    const struct nlmsghdr *nlh,
	    const struct nlattr * const attr[])
{
	struct sk_buff *skb2;
	struct nlmsghdr *nlh2;
	u8 family, min, max;
	const char *typename;
	int ret = 0;

	if (FUNC14(FUNC12(attr) ||
		     attr[IPSET_ATTR_TYPENAME] == NULL ||
		     attr[IPSET_ATTR_FAMILY] == NULL))
		return -IPSET_ERR_PROTOCOL;

	family = FUNC7(attr[IPSET_ATTR_FAMILY]);
	typename = FUNC6(attr[IPSET_ATTR_TYPENAME]);
	ret = FUNC3(typename, family, &min, &max);
	if (ret)
		return ret;

	skb2 = FUNC10(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (skb2 == NULL)
		return -ENOMEM;

	nlh2 = FUNC13(skb2, FUNC0(skb).pid, nlh->nlmsg_seq, 0,
			 IPSET_CMD_TYPE);
	if (!nlh2)
		goto nlmsg_failure;
	FUNC2(skb2, IPSET_ATTR_PROTOCOL, IPSET_PROTOCOL);
	FUNC1(skb2, IPSET_ATTR_TYPENAME, typename);
	FUNC2(skb2, IPSET_ATTR_FAMILY, family);
	FUNC2(skb2, IPSET_ATTR_REVISION, max);
	FUNC2(skb2, IPSET_ATTR_REVISION_MIN, min);
	FUNC9(skb2, nlh2);

	FUNC11("Send TYPE, nlmsg_len: %u\n", nlh2->nlmsg_len);
	ret = FUNC5(ctnl, skb2, FUNC0(skb).pid, MSG_DONTWAIT);
	if (ret < 0)
		return ret;

	return 0;

nla_put_failure:
	FUNC8(skb2, nlh2);
nlmsg_failure:
	FUNC4(skb2);
	return -EMSGSIZE;
}