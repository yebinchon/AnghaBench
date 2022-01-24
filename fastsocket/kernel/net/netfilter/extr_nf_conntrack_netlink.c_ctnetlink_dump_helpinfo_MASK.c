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
struct nlattr {int dummy; } ;
struct nf_conntrack_helper {int /*<<< orphan*/  (* to_nlattr ) (struct sk_buff*,struct nf_conn const*) ;int /*<<< orphan*/  name; } ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int CTA_HELP ; 
 int /*<<< orphan*/  CTA_HELP_NAME ; 
 int NLA_F_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conn_help* FUNC1 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int) ; 
 struct nf_conntrack_helper* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nf_conn const*) ; 

__attribute__((used)) static inline int
FUNC6(struct sk_buff *skb, const struct nf_conn *ct)
{
	struct nlattr *nest_helper;
	const struct nf_conn_help *help = FUNC1(ct);
	struct nf_conntrack_helper *helper;

	if (!help)
		return 0;

	helper = FUNC4(help->helper);
	if (!helper)
		goto out;

	nest_helper = FUNC3(skb, CTA_HELP | NLA_F_NESTED);
	if (!nest_helper)
		goto nla_put_failure;
	FUNC0(skb, CTA_HELP_NAME, helper->name);

	if (helper->to_nlattr)
		helper->to_nlattr(skb, ct);

	FUNC2(skb, nest_helper);
out:
	return 0;

nla_put_failure:
	return -1;
}