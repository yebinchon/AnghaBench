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
struct sock {int sk_state; int /*<<< orphan*/  sk_dst_cache; } ;
struct inet_connection_sock {scalar_t__ icsk_rto; scalar_t__ icsk_syn_retries; scalar_t__ icsk_retransmits; } ;
struct TYPE_2__ {int /*<<< orphan*/  icsk_user_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DEAD ; 
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 scalar_t__ TCP_RTO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sock*,int /*<<< orphan*/ ) ; 
 int sysctl_tcp_retries1 ; 
 int sysctl_tcp_retries2 ; 
 int sysctl_tcp_syn_retries ; 
 int /*<<< orphan*/  FUNC5 (struct inet_connection_sock*,struct sock*) ; 
 int FUNC6 (struct sock*,int const) ; 
 scalar_t__ FUNC7 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

__attribute__((used)) static int FUNC9(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	int retry_until;
	bool do_reset, syn_set = 0;

	if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV)) {
		if (icsk->icsk_retransmits)
			FUNC0(&sk->sk_dst_cache);
		retry_until = icsk->icsk_syn_retries ? : sysctl_tcp_syn_retries;
		syn_set = 1;
	} else {
		if (FUNC2(sk, sysctl_tcp_retries1, 0, 0)) {
			/* Black hole detection */
			FUNC5(icsk, sk);

			FUNC0(&sk->sk_dst_cache);
		}

		retry_until = sysctl_tcp_retries2;
		if (FUNC4(sk, SOCK_DEAD)) {
			const int alive = (icsk->icsk_rto < TCP_RTO_MAX);

			retry_until = FUNC6(sk, alive);
			do_reset = alive ||
				   !FUNC2(sk, retry_until, 0, 0);

			if (FUNC7(sk, do_reset))
				return 1;
		}
	}

	if (FUNC2(sk, retry_until,
				  syn_set ? 0 : FUNC3(sk)->icsk_user_timeout, syn_set)) {
		/* Has it gone just too far? */
		FUNC8(sk);
		return 1;
	}
	return 0;
}