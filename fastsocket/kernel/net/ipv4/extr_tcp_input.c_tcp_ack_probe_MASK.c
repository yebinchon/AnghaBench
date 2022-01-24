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
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_backoff; int icsk_rto; } ;
struct TYPE_2__ {int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_PROBE0 ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_connection_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_sock const*) ; 

__attribute__((used)) static void FUNC9(struct sock *sk)
{
	const struct tcp_sock *tp = FUNC7(sk);
	struct inet_connection_sock *icsk = FUNC2(sk);

	/* Was it a usable window open? */

	if (!FUNC1(FUNC0(FUNC6(sk))->end_seq, FUNC8(tp))) {
		icsk->icsk_backoff = 0;
		FUNC3(sk, ICSK_TIME_PROBE0);
		/* Socket must be waked up by subsequent tcp_data_snd_check().
		 * This function is not for random using!
		 */
	} else {
		FUNC4(sk, ICSK_TIME_PROBE0,
					  FUNC5(icsk->icsk_rto << icsk->icsk_backoff, TCP_RTO_MAX),
					  TCP_RTO_MAX);
	}
}