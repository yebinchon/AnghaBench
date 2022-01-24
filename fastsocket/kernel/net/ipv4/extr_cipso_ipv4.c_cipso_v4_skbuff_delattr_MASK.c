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
struct iphdr {int dummy; } ;
struct ip_options {scalar_t__ cipso; int is_changed; } ;
struct TYPE_2__ {struct ip_options opt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  IPOPT_NOOP ; 
 struct iphdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct iphdr*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

int FUNC6(struct sk_buff *skb)
{
	int ret_val;
	struct iphdr *iph;
	struct ip_options *opt = &FUNC0(skb)->opt;
	unsigned char *cipso_ptr;

	if (opt->cipso == 0)
		return 0;

	/* since we are changing the packet we should make a copy */
	ret_val = FUNC4(skb, FUNC5(skb));
	if (ret_val < 0)
		return ret_val;

	/* the easiest thing to do is just replace the cipso option with noop
	 * options since we don't change the size of the packet, although we
	 * still need to recalculate the checksum */

	iph = FUNC1(skb);
	cipso_ptr = (unsigned char *)iph + opt->cipso;
	FUNC3(cipso_ptr, IPOPT_NOOP, cipso_ptr[1]);
	opt->cipso = 0;
	opt->is_changed = 1;

	FUNC2(iph);

	return 0;
}