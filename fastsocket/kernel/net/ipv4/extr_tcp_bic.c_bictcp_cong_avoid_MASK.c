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
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; scalar_t__ snd_ssthresh; } ;
struct sock {int dummy; } ;
struct bictcp {int /*<<< orphan*/  cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bictcp*,scalar_t__) ; 
 struct bictcp* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC6(struct sock *sk, u32 ack, u32 in_flight)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct bictcp *ca = FUNC1(sk);

	if (!FUNC3(sk, in_flight))
		return;

	if (tp->snd_cwnd <= tp->snd_ssthresh)
		FUNC5(tp);
	else {
		FUNC0(ca, tp->snd_cwnd);
		FUNC2(tp, ca->cnt);
	}

}