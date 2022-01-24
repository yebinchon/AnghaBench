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
struct tcp_sock {int /*<<< orphan*/  snd_nxt; } ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ sum_rtt; scalar_t__ cnt_rtt; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 struct illinois* FUNC0 (struct sock*) ; 
 struct tcp_sock* FUNC1 (struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk)
{
	struct tcp_sock *tp = FUNC1(sk);
	struct illinois *ca = FUNC0(sk);

	ca->end_seq = tp->snd_nxt;
	ca->cnt_rtt = 0;
	ca->sum_rtt = 0;

	/* TODO: age max_rtt? */
}