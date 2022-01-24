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
struct TYPE_3__ {int flags; } ;
struct xfrm_state {TYPE_1__ props; } ;
struct sk_buff {int /*<<< orphan*/  mac_len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_IPV6 ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int XFRM_STATE_DECAP_DSCP ; 
 int XFRM_STATE_NOECN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct xfrm_state *x, struct sk_buff *skb)
{
	int err = -EINVAL;
	const unsigned char *old_mac;

	if (FUNC0(skb)->protocol != IPPROTO_IPV6)
		goto out;
	if (!FUNC7(skb, sizeof(struct ipv6hdr)))
		goto out;

	err = FUNC11(skb, GFP_ATOMIC);
	if (err)
		goto out;

	if (x->props.flags & XFRM_STATE_DECAP_DSCP)
		FUNC3(FUNC4(FUNC5(skb)),
			       FUNC2(skb));
	if (!(x->props.flags & XFRM_STATE_NOECN))
		FUNC1(skb);

	old_mac = FUNC8(skb);
	FUNC10(skb, -skb->mac_len);
	FUNC6(FUNC8(skb), old_mac, skb->mac_len);
	FUNC9(skb);
	err = 0;

out:
	return err;
}