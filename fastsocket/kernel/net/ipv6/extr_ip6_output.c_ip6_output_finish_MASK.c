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
struct sk_buff {int dummy; } ;
struct dst_entry {int /*<<< orphan*/  dev; TYPE_1__* neighbour; scalar_t__ hh; } ;
struct TYPE_2__ {int (* output ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPSTATS_MIB_OUTNOROUTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (scalar_t__,struct sk_buff*) ; 
 struct dst_entry* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct dst_entry *dst = FUNC5(skb);

	if (dst->hh)
		return FUNC4(dst->hh, skb);
	else if (dst->neighbour)
		return dst->neighbour->output(skb);

	FUNC0(FUNC1(dst->dev),
			 FUNC2(dst), IPSTATS_MIB_OUTNOROUTES);
	FUNC3(skb);
	return -EINVAL;

}