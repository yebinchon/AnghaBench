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
struct x25_sock {int condition; int /*<<< orphan*/  vr; int /*<<< orphan*/  vl; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int X25_COND_ACK_PENDING ; 
 int X25_COND_OWN_RX_BUSY ; 
 int /*<<< orphan*/  X25_RNR ; 
 int /*<<< orphan*/  X25_RR ; 
 struct x25_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC3(struct sock *sk)
{
	struct x25_sock *x25 = FUNC0(sk);

	if (x25->condition & X25_COND_OWN_RX_BUSY)
		FUNC2(sk, X25_RNR);
	else
		FUNC2(sk, X25_RR);

	x25->vl         = x25->vr;
	x25->condition &= ~X25_COND_ACK_PENDING;

	FUNC1(sk);
}