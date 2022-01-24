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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ linger2; scalar_t__ packets_out; } ;
struct sock {scalar_t__ sk_state; } ;
struct inet_connection_sock {scalar_t__ icsk_probes_out; } ;
struct TYPE_2__ {scalar_t__ icsk_user_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  SOCK_KEEPOPEN ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ TCP_CLOSE ; 
 scalar_t__ TCP_FIN_WAIT2 ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_RESOURCE_PROBE_INTERVAL ; 
 int TCP_TIMEWAIT_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 struct inet_connection_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 scalar_t__ FUNC6 (struct tcp_sock*) ; 
 scalar_t__ FUNC7 (struct tcp_sock*) ; 
 scalar_t__ FUNC8 (struct tcp_sock*) ; 
 TYPE_1__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sock*) ; 
 struct tcp_sock* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 scalar_t__ FUNC22 (struct sock*) ; 

__attribute__((used)) static void FUNC23 (unsigned long data)
{
	struct sock *sk = (struct sock *) data;
	struct inet_connection_sock *icsk = FUNC3(sk);
	struct tcp_sock *tp = FUNC18(sk);
	u32 elapsed;

	/* Only process if socket is not in use. */
	FUNC1(sk);
	if (FUNC12(sk)) {
		/* Try again later. */
		FUNC4 (sk, HZ/20);
		goto out;
	}

	if (sk->sk_state == TCP_LISTEN) {
		FUNC19(sk);
		goto out;
	}

	if (sk->sk_state == TCP_FIN_WAIT2 && FUNC11(sk, SOCK_DEAD)) {
		if (tp->linger2 >= 0) {
			const int tmo = FUNC15(sk) - TCP_TIMEWAIT_LEN;

			if (tmo > 0) {
				FUNC20(sk, TCP_FIN_WAIT2, tmo);
				goto out;
			}
		}
		FUNC16(sk, GFP_ATOMIC);
		goto death;
	}

	if (!FUNC11(sk, SOCK_KEEPOPEN) || sk->sk_state == TCP_CLOSE)
		goto out;

	elapsed = FUNC8(tp);

	/* It is alive without keepalive 8) */
	if (tp->packets_out || FUNC17(sk))
		goto resched;

	elapsed = FUNC7(tp);

	if (elapsed >= FUNC8(tp)) {
		u32 icsk_user_timeout = FUNC9(sk)->icsk_user_timeout;

		/* If the TCP_USER_TIMEOUT option is enabled, use that
		 * to determine when to timeout instead.
		 */
		if ((icsk_user_timeout != 0 &&
		    elapsed >= icsk_user_timeout &&
		    icsk->icsk_probes_out > 0) ||
		    (icsk_user_timeout == 0 &&
		    icsk->icsk_probes_out >= FUNC6(tp))) {
			FUNC16(sk, GFP_ATOMIC);
			FUNC21(sk);
			goto out;
		}
		if (FUNC22(sk) <= 0) {
			icsk->icsk_probes_out++;
			elapsed = FUNC5(tp);
		} else {
			/* If keepalive was lost due to local congestion,
			 * try harder.
			 */
			elapsed = TCP_RESOURCE_PROBE_INTERVAL;
		}
	} else {
		/* It is tp->rcv_tstamp + keepalive_time_when(tp) */
		elapsed = FUNC8(tp) - elapsed;
	}

	FUNC0(sk);
	FUNC10(sk);

resched:
	FUNC4 (sk, elapsed);
	goto out;

death:
	FUNC14(sk);

out:
	FUNC2(sk);
	FUNC13(sk);
}