#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ ece; scalar_t__ cwr; int /*<<< orphan*/  check; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ ece; scalar_t__ cwr; } ;
struct TYPE_4__ {TYPE_1__ tcp; } ;
struct ipt_ECN_info {int operation; TYPE_2__ proto; } ;
typedef  int /*<<< orphan*/  _tcph ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IPT_ECN_OP_SET_CWR ; 
 int IPT_ECN_OP_SET_ECE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 struct tcphdr* FUNC3 (struct sk_buff*,int,int,struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static inline bool
FUNC5(struct sk_buff *skb, const struct ipt_ECN_info *einfo)
{
	struct tcphdr _tcph, *tcph;
	__be16 oldval;

	/* Not enought header? */
	tcph = FUNC3(skb, FUNC2(skb), sizeof(_tcph), &_tcph);
	if (!tcph)
		return false;

	if ((!(einfo->operation & IPT_ECN_OP_SET_ECE) ||
	     tcph->ece == einfo->proto.tcp.ece) &&
	    (!(einfo->operation & IPT_ECN_OP_SET_CWR) ||
	     tcph->cwr == einfo->proto.tcp.cwr))
		return true;

	if (!FUNC4(skb, FUNC2(skb) + sizeof(*tcph)))
		return false;
	tcph = (void *)FUNC1(skb) + FUNC2(skb);

	oldval = ((__be16 *)tcph)[6];
	if (einfo->operation & IPT_ECN_OP_SET_ECE)
		tcph->ece = einfo->proto.tcp.ece;
	if (einfo->operation & IPT_ECN_OP_SET_CWR)
		tcph->cwr = einfo->proto.tcp.cwr;

	FUNC0(&tcph->check, skb,
				 oldval, ((__be16 *)tcph)[6], 0);
	return true;
}