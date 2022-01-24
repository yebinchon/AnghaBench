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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  protonum; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_l4proto {int dummy; } ;
struct nf_conntrack_l3proto {int dummy; } ;

/* Variables and functions */
 struct nf_conntrack_l3proto* FUNC0 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_l4proto* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,struct nf_conntrack_tuple const*,struct nf_conntrack_l3proto*) ; 
 int FUNC3 (struct sk_buff*,struct nf_conntrack_tuple const*,struct nf_conntrack_l4proto*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb,
		      const struct nf_conntrack_tuple *tuple)
{
	int ret;
	struct nf_conntrack_l3proto *l3proto;
	struct nf_conntrack_l4proto *l4proto;

	l3proto = FUNC0(tuple->src.l3num);
	ret = FUNC2(skb, tuple, l3proto);

	if (FUNC4(ret < 0))
		return ret;

	l4proto = FUNC1(tuple->src.l3num, tuple->dst.protonum);
	ret = FUNC3(skb, tuple, l4proto);

	return ret;
}