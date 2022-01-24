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
 int FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct sk_buff *skb)
{
	int header_size = ETH_HLEN + FUNC0(skb);

	FUNC1(skb, -header_size,
					 skb->nf_bridge->data, header_size);
}