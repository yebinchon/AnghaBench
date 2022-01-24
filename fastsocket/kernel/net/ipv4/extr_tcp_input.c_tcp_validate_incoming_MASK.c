#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ syn; scalar_t__ rst; } ;
struct TYPE_3__ {scalar_t__ saw_tstamp; } ;
struct tcp_sock {scalar_t__ rcv_nxt; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ seq; int /*<<< orphan*/  end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_PAWSESTABREJECTED ; 
 int /*<<< orphan*/  LINUX_MIB_TCPSYNCHALLENGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_INERRS ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct tcphdr*,struct tcp_sock*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct tcp_sock*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC11 (struct sock*) ; 

__attribute__((used)) static bool FUNC12(struct sock *sk, struct sk_buff *skb,
			      struct tcphdr *th, int syn_inerr)
{
	struct tcp_sock *tp = FUNC11(sk);

	/* RFC1323: H1. Apply PAWS check first. */
	if (FUNC5(skb, th, tp) && tp->rx_opt.saw_tstamp &&
	    FUNC6(sk, skb)) {
		if (!th->rst) {
			FUNC0(FUNC4(sk), LINUX_MIB_PAWSESTABREJECTED);
			FUNC9(sk, skb);
			goto discard;
		}
		/* Reset is accepted even if it did not pass PAWS. */
	}

	/* Step 1: check sequence number */
	if (!FUNC10(tp, FUNC2(skb)->seq, FUNC2(skb)->end_seq)) {
		/* RFC793, page 37: "In all states except SYN-SENT, all reset
		 * (RST) segments are validated by checking their SEQ-fields."
		 * And page 69: "If an incoming segment is not acceptable,
		 * an acknowledgment should be sent in reply (unless the RST
		 * bit is set, if so drop the segment and return)".
		 */
		if (!th->rst) {
			if (th->syn)
				goto syn_challenge;
			FUNC9(sk, skb);
		}
		goto discard;
	}

	/* Step 2: check RST bit */
	if (th->rst) {
		/* RFC 5961 3.2 :
		 * If sequence number exactly matches RCV.NXT, then
		 *     RESET the connection
		 * else
		 *     Send a challenge ACK
		 */
		if (FUNC2(skb)->seq == tp->rcv_nxt)
			FUNC7(sk);
		else
			FUNC8(sk);
		goto discard;
	}

	/* step 3: check security and precedence [ignored] */

	/* step 4: Check for a SYN
	 * RFC 5691 4.2 : Send a challenge ack
	 */
	if (th->syn) {
syn_challenge:
		if (syn_inerr)
			FUNC1(FUNC4(sk), TCP_MIB_INERRS);
		FUNC0(FUNC4(sk), LINUX_MIB_TCPSYNCHALLENGE);
		FUNC8(sk);
		goto discard;
	}

	return true;

discard:
	FUNC3(skb);
	return false;
}