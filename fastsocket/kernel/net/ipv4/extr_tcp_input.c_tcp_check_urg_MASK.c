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
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  urg_ptr; } ;
struct tcp_sock {scalar_t__ copied_seq; scalar_t__ rcv_nxt; scalar_t__ urg_seq; scalar_t__ pred_flags; scalar_t__ urg_data; } ;
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ end_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_URGINLINE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ TCP_URG_NOTYET ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_tcp_stdurg ; 
 struct tcp_sock* FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *sk, struct tcphdr *th)
{
	struct tcp_sock *tp = FUNC10(sk);
	u32 ptr = FUNC6(th->urg_ptr);

	if (ptr && !sysctl_tcp_stdurg)
		ptr--;
	ptr += FUNC5(th->seq);

	/* Ignore urgent data that we've already seen and read. */
	if (FUNC3(tp->copied_seq, ptr))
		return;

	/* Do not replay urg ptr.
	 *
	 * NOTE: interesting situation not covered by specs.
	 * Misbehaving sender may send urg ptr, pointing to segment,
	 * which we already have in ofo queue. We are not able to fetch
	 * such data and will stay in TCP_URG_NOTYET until will be eaten
	 * by recvmsg(). Seems, we are not obliged to handle such wicked
	 * situations. But it is worth to think about possibility of some
	 * DoSes using some hypothetical application level deadlock.
	 */
	if (FUNC4(ptr, tp->rcv_nxt))
		return;

	/* Do we already have a newer (or duplicate) urgent pointer? */
	if (tp->urg_data && !FUNC3(ptr, tp->urg_seq))
		return;

	/* Tell the world about our new urgent pointer. */
	FUNC7(sk);

	/* We may be adding urgent data when the last byte read was
	 * urgent. To do this requires some care. We cannot just ignore
	 * tp->copied_seq since we would read the last urgent byte again
	 * as data, nor can we alter copied_seq until this data arrives
	 * or we break the semantics of SIOCATMARK (and thus sockatmark())
	 *
	 * NOTE. Double Dutch. Rendering to plain English: author of comment
	 * above did something sort of 	send("A", MSG_OOB); send("B", MSG_OOB);
	 * and expect that both A and B disappear from stream. This is _wrong_.
	 * Though this happens in BSD with high probability, this is occasional.
	 * Any application relying on this is buggy. Note also, that fix "works"
	 * only in this artificial test. Insert some normal data between A and B and we will
	 * decline of BSD again. Verdict: it is better to remove to trap
	 * buggy users.
	 */
	if (tp->urg_seq == tp->copied_seq && tp->urg_data &&
	    !FUNC9(sk, SOCK_URGINLINE) && tp->copied_seq != tp->rcv_nxt) {
		struct sk_buff *skb = FUNC8(&sk->sk_receive_queue);
		tp->copied_seq++;
		if (skb && !FUNC4(tp->copied_seq, FUNC0(skb)->end_seq)) {
			FUNC2(skb, &sk->sk_receive_queue);
			FUNC1(skb);
		}
	}

	tp->urg_data = TCP_URG_NOTYET;
	tp->urg_seq = ptr;

	/* Disable header prediction. */
	tp->pred_flags = 0;
}