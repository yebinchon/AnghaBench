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
struct tcp_sock {int /*<<< orphan*/  snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct hstcp {scalar_t__ ai; } ;

/* Variables and functions */
 struct hstcp* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct hstcp *ca = FUNC0(sk);

	ca->ai = 0;

	/* Ensure the MD arithmetic works.  This is somewhat pedantic,
	 * since I don't think we will see a cwnd this large. :) */
	tp->snd_cwnd_clamp = FUNC1(u32, tp->snd_cwnd_clamp, 0xffffffff/128);
}