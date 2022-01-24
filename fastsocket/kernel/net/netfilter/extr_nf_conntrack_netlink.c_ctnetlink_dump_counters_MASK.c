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
struct nf_conn_counter {int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  enum ctattr_type { ____Placeholder_ctattr_type } ctattr_type ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_COUNTERS_BYTES ; 
 int CTA_COUNTERS_ORIG ; 
 int /*<<< orphan*/  CTA_COUNTERS_PACKETS ; 
 int CTA_COUNTERS_REPLY ; 
 int NLA_F_NESTED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_conn_counter* FUNC2 (struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb, const struct nf_conn *ct,
			enum ip_conntrack_dir dir)
{
	enum ctattr_type type = dir ? CTA_COUNTERS_REPLY: CTA_COUNTERS_ORIG;
	struct nlattr *nest_count;
	const struct nf_conn_counter *acct;

	acct = FUNC2(ct);
	if (!acct)
		return 0;

	nest_count = FUNC4(skb, type | NLA_F_NESTED);
	if (!nest_count)
		goto nla_put_failure;

	FUNC0(skb, CTA_COUNTERS_PACKETS,
		     FUNC1(acct[dir].packets));
	FUNC0(skb, CTA_COUNTERS_BYTES,
		     FUNC1(acct[dir].bytes));

	FUNC3(skb, nest_count);

	return 0;

nla_put_failure:
	return -1;
}