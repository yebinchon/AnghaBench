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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct tcamsg {scalar_t__ tca__pad2; scalar_t__ tca__pad1; int /*<<< orphan*/  tca_family; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 struct tcamsg* FUNC0 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_ACT_TAB ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct tc_action*,int,int) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *skb, struct tc_action *a, u32 pid, u32 seq,
	     u16 flags, int event, int bind, int ref)
{
	struct tcamsg *t;
	struct nlmsghdr *nlh;
	unsigned char *b = FUNC5(skb);
	struct nlattr *nest;

	nlh = FUNC1(skb, pid, seq, event, sizeof(*t), flags);

	t = FUNC0(nlh);
	t->tca_family = AF_UNSPEC;
	t->tca__pad1 = 0;
	t->tca__pad2 = 0;

	nest = FUNC3(skb, TCA_ACT_TAB);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC6(skb, a, bind, ref) < 0)
		goto nla_put_failure;

	FUNC2(skb, nest);

	nlh->nlmsg_len = FUNC5(skb) - b;
	return skb->len;

nla_put_failure:
nlmsg_failure:
	FUNC4(skb, b);
	return -1;
}