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

/* Variables and functions */
 int /*<<< orphan*/  TCP_SCALABLE_AI_CNT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, u32 ack, u32 in_flight)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (!FUNC2(sk, in_flight))
		return;

	if (tp->snd_cwnd <= tp->snd_ssthresh)
		FUNC4(tp);
	else
		FUNC1(tp, FUNC0(tp->snd_cwnd, TCP_SCALABLE_AI_CNT));
}