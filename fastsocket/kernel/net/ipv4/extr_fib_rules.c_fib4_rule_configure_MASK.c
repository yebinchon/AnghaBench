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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct fib_table {scalar_t__ tb_id; } ;
struct fib_rule_hdr {int tos; scalar_t__ dst_len; scalar_t__ src_len; } ;
struct fib_rule {scalar_t__ table; scalar_t__ action; } ;
struct fib4_rule {int tos; scalar_t__ dst_len; void* dstmask; scalar_t__ src_len; void* srcmask; int /*<<< orphan*/  tclassid; void* dst; void* src; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 size_t FRA_DST ; 
 size_t FRA_FLOW ; 
 size_t FRA_SRC ; 
 scalar_t__ FR_ACT_TO_TBL ; 
 int IPTOS_TOS_MASK ; 
 scalar_t__ RT_TABLE_UNSPEC ; 
 struct fib_table* FUNC0 (struct net*) ; 
 void* FUNC1 (scalar_t__) ; 
 void* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 struct net* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fib_rule *rule, struct sk_buff *skb,
			       struct fib_rule_hdr *frh,
			       struct nlattr **tb)
{
	struct net *net = FUNC4(skb->sk);
	int err = -EINVAL;
	struct fib4_rule *rule4 = (struct fib4_rule *) rule;

	if (frh->tos & ~IPTOS_TOS_MASK)
		goto errout;

	if (rule->table == RT_TABLE_UNSPEC) {
		if (rule->action == FR_ACT_TO_TBL) {
			struct fib_table *table;

			table = FUNC0(net);
			if (table == NULL) {
				err = -ENOBUFS;
				goto errout;
			}

			rule->table = table->tb_id;
		}
	}

	if (frh->src_len)
		rule4->src = FUNC2(tb[FRA_SRC]);

	if (frh->dst_len)
		rule4->dst = FUNC2(tb[FRA_DST]);

#ifdef CONFIG_NET_CLS_ROUTE
	if (tb[FRA_FLOW])
		rule4->tclassid = nla_get_u32(tb[FRA_FLOW]);
#endif

	rule4->src_len = frh->src_len;
	rule4->srcmask = FUNC1(rule4->src_len);
	rule4->dst_len = frh->dst_len;
	rule4->dstmask = FUNC1(rule4->dst_len);
	rule4->tos = frh->tos;

	err = 0;
errout:
	return err;
}