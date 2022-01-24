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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_sock {int inc_cntr; int dec_cntr; scalar_t__ npta; scalar_t__ dec_step; } ;

/* Variables and functions */
 scalar_t__ LLC_2_SEQ_NBR_MODULO ; 
 struct llc_sock* FUNC0 (struct sock*) ; 

__attribute__((used)) static int FUNC1(struct sock *sk, struct sk_buff *skb)
{
	struct llc_sock *llc = FUNC0(sk);

	if (!llc->inc_cntr) {
		llc->dec_step = 0;
		llc->dec_cntr = llc->inc_cntr = 2;
		++llc->npta;
		if (llc->npta > (u8) ~LLC_2_SEQ_NBR_MODULO)
			llc->npta = (u8) ~LLC_2_SEQ_NBR_MODULO;
	} else
		--llc->inc_cntr;
	return 0;
}