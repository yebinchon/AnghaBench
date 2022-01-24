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
struct iphdr {int dummy; } ;
struct TYPE_4__ {scalar_t__ protocol; int /*<<< orphan*/  tos; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_IPIP ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int XFRM_STATE_DECAP_DSCP ; 
 int XFRM_STATE_NOECN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct xfrm_state *x, struct sk_buff *skb)
{
	const unsigned char *old_mac;
	int err = -EINVAL;

	if (FUNC0(skb)->protocol != IPPROTO_IPIP)
		goto out;

	if (!FUNC5(skb, sizeof(struct iphdr)))
		goto out;

	err = FUNC9(skb, GFP_ATOMIC);
	if (err)
		goto out;

	if (x->props.flags & XFRM_STATE_DECAP_DSCP)
		FUNC3(FUNC0(skb)->tos, FUNC2(skb));
	if (!(x->props.flags & XFRM_STATE_NOECN))
		FUNC1(skb);

	old_mac = FUNC6(skb);
	FUNC8(skb, -skb->mac_len);
	FUNC4(FUNC6(skb), old_mac, skb->mac_len);
	FUNC7(skb);
	err = 0;

out:
	return err;
}