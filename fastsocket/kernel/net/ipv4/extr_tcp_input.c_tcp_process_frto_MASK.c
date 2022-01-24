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
struct tcp_sock {int frto_counter; scalar_t__ undo_marker; scalar_t__ snd_cwnd; int /*<<< orphan*/  frto_highmark; int /*<<< orphan*/  snd_una; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_retransmits; } ;

/* Variables and functions */
 int FLAG_ANY_PROGRESS ; 
 int FLAG_DATA_ACKED ; 
 int FLAG_DATA_SACKED ; 
 int FLAG_FORWARD_PROGRESS ; 
 int FLAG_NONHEAD_RETRANS_ACKED ; 
 int FLAG_NOT_DUP ; 
 int FLAG_ONLY_ORIG_SACKED ; 
 int FLAG_RETRANS_DATA_ACKED ; 
 int /*<<< orphan*/  LINUX_MIB_TCPSPURIOUSRTOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int sysctl_tcp_frto_response ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 struct tcp_sock* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tcp_sock*) ; 

__attribute__((used)) static int FUNC14(struct sock *sk, int flag)
{
	struct tcp_sock *tp = FUNC11(sk);

	FUNC13(tp);

	/* Duplicate the behavior from Loss state (fastretrans_alert) */
	if (flag & FLAG_DATA_ACKED)
		FUNC2(sk)->icsk_retransmits = 0;

	if ((flag & FLAG_NONHEAD_RETRANS_ACKED) ||
	    ((tp->frto_counter >= 2) && (flag & FLAG_RETRANS_DATA_ACKED)))
		tp->undo_marker = 0;

	if (!FUNC1(tp->snd_una, tp->frto_highmark)) {
		FUNC6(sk, (tp->frto_counter == 1 ? 2 : 3), flag);
		return 1;
	}

	if (!FUNC7(tp)) {
		/* RFC4138 shortcoming in step 2; should also have case c):
		 * ACK isn't duplicate nor advances window, e.g., opposite dir
		 * data, winupdate
		 */
		if (!(flag & FLAG_ANY_PROGRESS) && (flag & FLAG_NOT_DUP))
			return 1;

		if (!(flag & FLAG_DATA_ACKED)) {
			FUNC6(sk, (tp->frto_counter == 1 ? 0 : 3),
					    flag);
			return 1;
		}
	} else {
		if (!(flag & FLAG_DATA_ACKED) && (tp->frto_counter == 1)) {
			if (!FUNC9(tp)) {
				FUNC6(sk, 2, flag);
				return true;
			}

			/* Prevent sending of new data. */
			tp->snd_cwnd = FUNC3(tp->snd_cwnd,
					   FUNC9(tp));
			return 1;
		}

		if ((tp->frto_counter >= 2) &&
		    (!(flag & FLAG_FORWARD_PROGRESS) ||
		     ((flag & FLAG_DATA_SACKED) &&
		      !(flag & FLAG_ONLY_ORIG_SACKED)))) {
			/* RFC4138 shortcoming (see comment above) */
			if (!(flag & FLAG_FORWARD_PROGRESS) &&
			    (flag & FLAG_NOT_DUP))
				return 1;

			FUNC6(sk, 3, flag);
			return 1;
		}
	}

	if (tp->frto_counter == 1) {
		/* tcp_may_send_now needs to see updated state */
		tp->snd_cwnd = FUNC9(tp) + 2;
		tp->frto_counter = 2;

		if (!FUNC8(sk))
			FUNC6(sk, 2, flag);

		return 1;
	} else {
		switch (sysctl_tcp_frto_response) {
		case 2:
			FUNC12(sk, flag);
			break;
		case 1:
			FUNC5(tp);
			break;
		default:
			FUNC10(sk);
			break;
		}
		tp->frto_counter = 0;
		tp->undo_marker = 0;
		FUNC0(FUNC4(sk), LINUX_MIB_TCPSPURIOUSRTOS);
	}
	return 0;
}