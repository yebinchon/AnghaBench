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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  spi; } ;
struct xfrm_state {TYPE_1__ id; struct ipcomp_data* data; } ;
struct sk_buff {scalar_t__ len; } ;
struct ipcomp_data {scalar_t__ threshold; } ;
struct ip_comp_hdr {int /*<<< orphan*/  cpi; scalar_t__ flags; int /*<<< orphan*/  nexthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip_comp_hdr* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct xfrm_state*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC8(struct xfrm_state *x, struct sk_buff *skb)
{
	int err;
	struct ip_comp_hdr *ipch;
	struct ipcomp_data *ipcd = x->data;

	if (skb->len < ipcd->threshold) {
		/* Don't bother compressing */
		goto out_ok;
	}

	if (FUNC4(skb))
		goto out_ok;

	err = FUNC2(x, skb);

	if (err) {
		goto out_ok;
	}

	/* Install ipcomp header, convert into ipcomp datagram. */
	ipch = FUNC1(skb);
	ipch->nexthdr = *FUNC5(skb);
	ipch->flags = 0;
	ipch->cpi = FUNC0((u16 )FUNC3(x->id.spi));
	*FUNC5(skb) = IPPROTO_COMP;
out_ok:
	FUNC7(skb, -FUNC6(skb));
	return 0;
}