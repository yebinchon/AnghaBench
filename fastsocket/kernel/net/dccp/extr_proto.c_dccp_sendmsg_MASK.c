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
struct TYPE_4__ {scalar_t__ qlen; } ;
struct sock {int sk_state; TYPE_2__ sk_write_queue; TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct dccp_sock {size_t dccps_mss_cache; } ;
struct TYPE_3__ {size_t max_header; } ;

/* Variables and functions */
 int DCCPF_OPEN ; 
 int DCCPF_PARTOPEN ; 
 int EAGAIN ; 
 int EMSGSIZE ; 
 int const MSG_DONTWAIT ; 
 struct dccp_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,size_t) ; 
 struct sk_buff* FUNC10 (struct sock*,int,int const,int*) ; 
 long FUNC11 (struct sock*,int const) ; 
 scalar_t__ sysctl_dccp_tx_qlen ; 

int FUNC12(struct kiocb *iocb, struct sock *sk, struct msghdr *msg,
		 size_t len)
{
	const struct dccp_sock *dp = FUNC0(sk);
	const int flags = msg->msg_flags;
	const int noblock = flags & MSG_DONTWAIT;
	struct sk_buff *skb;
	int rc, size;
	long timeo;

	if (len > dp->dccps_mss_cache)
		return -EMSGSIZE;

	FUNC3(sk);

	if (sysctl_dccp_tx_qlen &&
	    (sk->sk_write_queue.qlen >= sysctl_dccp_tx_qlen)) {
		rc = -EAGAIN;
		goto out_release;
	}

	timeo = FUNC11(sk, noblock);

	/*
	 * We have to use sk_stream_wait_connect here to set sk_write_pending,
	 * so that the trick in dccp_rcv_request_sent_state_process.
	 */
	/* Wait for a connection to finish. */
	if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
		if ((rc = FUNC6(sk, &timeo)) != 0)
			goto out_release;

	size = sk->sk_prot->max_header + len;
	FUNC5(sk);
	skb = FUNC10(sk, size, noblock, &rc);
	FUNC3(sk);
	if (skb == NULL)
		goto out_release;

	FUNC9(skb, sk->sk_prot->max_header);
	rc = FUNC4(FUNC7(skb, len), msg->msg_iov, len);
	if (rc != 0)
		goto out_discard;

	FUNC8(&sk->sk_write_queue, skb);
	FUNC1(sk,0);
out_release:
	FUNC5(sk);
	return rc ? : len;
out_discard:
	FUNC2(skb);
	goto out_release;
}