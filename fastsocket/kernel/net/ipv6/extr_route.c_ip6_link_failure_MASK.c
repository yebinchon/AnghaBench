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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; } ;
struct rt6_info {int rt6i_flags; TYPE_1__* rt6i_node; TYPE_2__ u; } ;
struct TYPE_3__ {int fn_sernum; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMPV6_ADDR_UNREACH ; 
 int /*<<< orphan*/  ICMPV6_DEST_UNREACH ; 
 int RTF_CACHE ; 
 int RTF_DEFAULT ; 
 int RTF_EXPIRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb)
{
	struct rt6_info *rt;

	FUNC1(skb, ICMPV6_DEST_UNREACH, ICMPV6_ADDR_UNREACH, 0, skb->dev);

	rt = (struct rt6_info *) FUNC2(skb);
	if (rt) {
		if (rt->rt6i_flags&RTF_CACHE) {
			FUNC0(&rt->u.dst, 0);
			rt->rt6i_flags |= RTF_EXPIRES;
		} else if (rt->rt6i_node && (rt->rt6i_flags & RTF_DEFAULT))
			rt->rt6i_node->fn_sernum = -1;
	}
}