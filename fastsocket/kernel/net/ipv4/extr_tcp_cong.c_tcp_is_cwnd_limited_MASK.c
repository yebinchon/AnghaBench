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
typedef  int u32 ;
struct tcp_sock {int snd_cwnd; int mss_cache; } ;
struct sock {int sk_gso_max_size; } ;
struct TYPE_2__ {int sk_gso_max_segs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock const*) ; 
 TYPE_1__* FUNC1 (struct sock const*) ; 
 int sysctl_tcp_tso_win_divisor ; 
 int FUNC2 (struct tcp_sock const*) ; 
 struct tcp_sock* FUNC3 (struct sock const*) ; 

int FUNC4(const struct sock *sk, u32 in_flight)
{
	const struct tcp_sock *tp = FUNC3(sk);
	u32 left;

	if (in_flight >= tp->snd_cwnd)
		return 1;

	left = tp->snd_cwnd - in_flight;
	if (FUNC0(sk) &&
	    left * sysctl_tcp_tso_win_divisor < tp->snd_cwnd &&
	    left * tp->mss_cache < sk->sk_gso_max_size &&
	    left < FUNC1(sk)->sk_gso_max_segs)
		return 1;
	return left <= FUNC2(tp);
}