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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ ack_pf; scalar_t__ ack_must_be_send; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 struct llc_sock* FUNC2 (struct sock*) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC2(sk);

	if (llc->ack_must_be_send) {
		FUNC1(sk, skb);
		llc->ack_must_be_send = 0 ;
		llc->ack_pf = 0;
	} else
		FUNC0(sk, skb);
	return 0;
}