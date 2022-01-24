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
struct bictcp {int /*<<< orphan*/  cnt; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct bictcp*,scalar_t__) ; 
 scalar_t__ hystart ; 
 struct bictcp* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, u32 ack, u32 in_flight)
{
	struct tcp_sock *tp = FUNC6(sk);
	struct bictcp *ca = FUNC3(sk);

	if (!FUNC5(sk, in_flight))
		return;

	if (tp->snd_cwnd <= tp->snd_ssthresh) {
		if (hystart && FUNC0(ack, ca->end_seq))
			FUNC1(sk);
		FUNC7(tp);
	} else {
		FUNC2(ca, tp->snd_cwnd);
		FUNC4(tp, ca->cnt);
	}

}