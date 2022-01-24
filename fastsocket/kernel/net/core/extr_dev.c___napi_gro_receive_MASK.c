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
struct sk_buff {TYPE_1__* dev; struct sk_buff* next; } ;
struct napi_struct {struct sk_buff* gro_list; } ;
typedef  int /*<<< orphan*/  gro_result_t ;
struct TYPE_4__ {int same_flow; scalar_t__ flush; } ;
struct TYPE_3__ {unsigned int hard_header_len; } ;

/* Variables and functions */
 unsigned int ETH_HLEN ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*,struct sk_buff*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static gro_result_t
FUNC6(struct napi_struct *napi, struct sk_buff *skb)
{
	struct sk_buff *p;
	unsigned int maclen = skb->dev->hard_header_len;

	for (p = napi->gro_list; p; p = p->next) {
		unsigned long diffs;

		diffs = (unsigned long)p->dev ^ (unsigned long)skb->dev;
		if (maclen == ETH_HLEN)
			diffs |= FUNC1(FUNC5(p),
						      FUNC4(skb));
		else if (!diffs)
			diffs = FUNC3(FUNC5(p),
				       FUNC4(skb),
				       maclen);
		FUNC0(p)->same_flow = !diffs;
		FUNC0(p)->flush = 0;
	}

	return FUNC2(napi, skb);
}