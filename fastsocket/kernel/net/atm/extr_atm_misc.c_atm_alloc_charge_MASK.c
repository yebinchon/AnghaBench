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
struct sock {scalar_t__ sk_rcvbuf; int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {scalar_t__ truesize; } ;
struct atm_vcc {TYPE_1__* stats; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  rx_drop; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct atm_vcc*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct sock* FUNC7 (struct atm_vcc*) ; 

struct sk_buff *FUNC8(struct atm_vcc *vcc,int pdu_size,
    gfp_t gfp_flags)
{
	struct sock *sk = FUNC7(vcc);
	int guess = FUNC2(pdu_size);

	FUNC1(vcc,guess);
	if (FUNC6(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf) {
		struct sk_buff *skb = FUNC0(pdu_size,gfp_flags);

		if (skb) {
			FUNC4(skb->truesize-guess,
				   &sk->sk_rmem_alloc);
			return skb;
		}
	}
	FUNC3(vcc,guess);
	FUNC5(&vcc->stats->rx_drop);
	return NULL;
}