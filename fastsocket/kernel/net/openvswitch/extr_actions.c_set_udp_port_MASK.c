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
struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ rxhash; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ CSUM_MANGLED_0 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct udphdr* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC2(struct sk_buff *skb, __be16 *port, __be16 new_port)
{
	struct udphdr *uh = FUNC1(skb);

	if (uh->check && skb->ip_summed != CHECKSUM_PARTIAL) {
		FUNC0(skb, port, new_port, &uh->check);

		if (!uh->check)
			uh->check = CSUM_MANGLED_0;
	} else {
		*port = new_port;
		skb->rxhash = 0;
	}
}