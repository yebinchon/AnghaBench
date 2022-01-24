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
struct sk_buff {TYPE_1__* nf_bridge; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sk_buff*,int) ; 

int FUNC4(struct sk_buff *skb)
{
	int err;
	int header_size = ETH_HLEN + FUNC1(skb);

	err = FUNC3(skb, header_size);
	if (err)
		return err;

	FUNC2(skb, -header_size,
				       skb->nf_bridge->data, header_size);
	FUNC0(skb, FUNC1(skb));
	return 0;
}