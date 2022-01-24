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
struct TYPE_2__ {int /*<<< orphan*/  ee_origin; int /*<<< orphan*/  ee_errno; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct skb_shared_hwtstamps {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  tstamp; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMSG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sock_exterr_skb* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SO_EE_ORIGIN_TIMESTAMPING ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock_exterr_skb*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct skb_shared_hwtstamps* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sock*,struct sk_buff*) ; 

void FUNC7(struct sk_buff *orig_skb,
		struct skb_shared_hwtstamps *hwtstamps)
{
	struct sock *sk = orig_skb->sk;
	struct sock_exterr_skb *serr;
	struct sk_buff *skb;
	int err;

	if (!sk)
		return;

	skb = FUNC4(orig_skb, GFP_ATOMIC);
	if (!skb)
		return;

	if (hwtstamps) {
		*FUNC5(skb) =
			*hwtstamps;
	} else {
		/*
		 * no hardware time stamps available,
		 * so keep the skb_shared_tx and only
		 * store software time stamp
		 */
		skb->tstamp = FUNC2();
	}

	serr = FUNC0(skb);
	FUNC3(serr, 0, sizeof(*serr));
	serr->ee.ee_errno = ENOMSG;
	serr->ee.ee_origin = SO_EE_ORIGIN_TIMESTAMPING;
	err = FUNC6(sk, skb);
	if (err)
		FUNC1(skb);
}