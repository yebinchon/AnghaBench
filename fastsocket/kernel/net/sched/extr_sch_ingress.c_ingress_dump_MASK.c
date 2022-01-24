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
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, struct sk_buff *skb)
{
	struct nlattr *nest;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	FUNC1(skb, nest);
	return skb->len;

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}