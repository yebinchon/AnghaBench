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
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_state; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {size_t state; int /*<<< orphan*/  wait; int /*<<< orphan*/  rto_initial; int /*<<< orphan*/ * timeouts; TYPE_1__ base; } ;
typedef  size_t sctp_state_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOSED ; 
 int /*<<< orphan*/  COOKIE_WAIT ; 
 int /*<<< orphan*/  ESTABLISHED ; 
 int /*<<< orphan*/  RCV_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sctp_association*,int /*<<< orphan*/ ) ; 
 size_t SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 size_t SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  SCTP_SS_ESTABLISHED ; 
 int /*<<< orphan*/  SHUTDOWN_RECEIVED ; 
 int /*<<< orphan*/  TCP ; 
 int /*<<< orphan*/  UDP ; 
 scalar_t__ FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sctp_association*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sctp_state_tbl ; 
 scalar_t__ FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(sctp_cmd_seq_t *cmds,
			       struct sctp_association *asoc,
			       sctp_state_t state)
{
	struct sock *sk = asoc->base.sk;

	asoc->state = state;

	FUNC0("sctp_cmd_new_state: asoc %p[%s]\n",
			  asoc, sctp_state_tbl[state]);

	if (FUNC3(sk, TCP)) {
		/* Change the sk->sk_state of a TCP-style socket that has
		 * sucessfully completed a connect() call.
		 */
		if (FUNC2(asoc, ESTABLISHED) && FUNC1(sk, CLOSED))
			sk->sk_state = SCTP_SS_ESTABLISHED;

		/* Set the RCV_SHUTDOWN flag when a SHUTDOWN is received. */
		if (FUNC2(asoc, SHUTDOWN_RECEIVED) &&
		    FUNC1(sk, ESTABLISHED))
			sk->sk_shutdown |= RCV_SHUTDOWN;
	}

	if (FUNC2(asoc, COOKIE_WAIT)) {
		/* Reset init timeouts since they may have been
		 * increased due to timer expirations.
		 */
		asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_INIT] =
						asoc->rto_initial;
		asoc->timeouts[SCTP_EVENT_TIMEOUT_T1_COOKIE] =
						asoc->rto_initial;
	}

	if (FUNC2(asoc, ESTABLISHED) ||
	    FUNC2(asoc, CLOSED) ||
	    FUNC2(asoc, SHUTDOWN_RECEIVED)) {
		/* Wake up any processes waiting in the asoc's wait queue in
		 * sctp_wait_for_connect() or sctp_wait_for_sndbuf().
		 */
		if (FUNC5(&asoc->wait))
			FUNC6(&asoc->wait);

		/* Wake up any processes waiting in the sk's sleep queue of
		 * a TCP-style or UDP-style peeled-off socket in
		 * sctp_wait_for_accept() or sctp_wait_for_packet().
		 * For a UDP-style socket, the waiters are woken up by the
		 * notifications.
		 */
		if (!FUNC3(sk, UDP))
			sk->sk_state_change(sk);
	}
}