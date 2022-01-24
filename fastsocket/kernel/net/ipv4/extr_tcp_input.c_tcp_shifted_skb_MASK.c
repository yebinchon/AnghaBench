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
struct tcp_sock {unsigned int lost_cnt_hint; struct sk_buff* lost_skb_hint; struct sk_buff* scoreboard_skb_hint; struct sk_buff* retransmit_skb_hint; } ;
struct tcp_sacktag_state {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_gso_type; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int end_seq; int seq; int sacked; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {unsigned int gso_segs; int gso_size; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LINUX_MIB_SACKMERGED ; 
 int /*<<< orphan*/  LINUX_MIB_SACKSHIFTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPCB_EVER_RETRANS ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sock*,struct tcp_sacktag_state*,int,unsigned int) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct sock*) ; 
 struct sk_buff* FUNC12 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct sk_buff *skb,
			   struct tcp_sacktag_state *state,
			   unsigned int pcount, int shifted, int mss,
			   int dup_sack)
{
	struct tcp_sock *tp = FUNC9(sk);
	struct sk_buff *prev = FUNC12(sk, skb);

	FUNC0(!pcount);

	if (skb == tp->lost_skb_hint)
		tp->lost_cnt_hint += pcount;

	FUNC2(prev)->end_seq += shifted;
	FUNC2(skb)->seq += shifted;

	FUNC4(prev)->gso_segs += pcount;
	FUNC0(FUNC4(skb)->gso_segs < pcount);
	FUNC4(skb)->gso_segs -= pcount;

	/* When we're adding to gso_segs == 1, gso_size will be zero,
	 * in theory this shouldn't be necessary but as long as DSACK
	 * code can come after this skb later on it's better to keep
	 * setting gso_size to something.
	 */
	if (!FUNC4(prev)->gso_size) {
		FUNC4(prev)->gso_size = mss;
		FUNC4(prev)->gso_type = sk->sk_gso_type;
	}

	/* CHECKME: To clear or not to clear? Mimics normal skb currently */
	if (FUNC4(skb)->gso_segs <= 1) {
		FUNC4(skb)->gso_size = 0;
		FUNC4(skb)->gso_type = 0;
	}

	/* We discard results */
	FUNC8(skb, sk, state, dup_sack, pcount);

	/* Difference in this won't matter, both ACKed by the same cumul. ACK */
	FUNC2(prev)->sacked |= (FUNC2(skb)->sacked & TCPCB_EVER_RETRANS);

	if (skb->len > 0) {
		FUNC0(!FUNC10(skb));
		FUNC1(FUNC5(sk), LINUX_MIB_SACKSHIFTED);
		return 0;
	}

	/* Whole SKB was eaten :-) */

	if (skb == tp->retransmit_skb_hint)
		tp->retransmit_skb_hint = prev;
	if (skb == tp->scoreboard_skb_hint)
		tp->scoreboard_skb_hint = prev;
	if (skb == tp->lost_skb_hint) {
		tp->lost_skb_hint = prev;
		tp->lost_cnt_hint -= FUNC10(prev);
	}

	FUNC2(skb)->flags |= FUNC2(prev)->flags;
	if (skb == FUNC7(sk))
		FUNC6(sk, skb);

	FUNC11(skb, sk);
	FUNC3(sk, skb);

	FUNC1(FUNC5(sk), LINUX_MIB_SACKMERGED);

	return 1;
}