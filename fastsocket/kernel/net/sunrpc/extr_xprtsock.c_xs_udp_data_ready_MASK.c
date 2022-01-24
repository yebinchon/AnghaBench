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
typedef  int /*<<< orphan*/  u32 ;
struct udphdr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct sk_buff {int len; } ;
struct rpc_xprt {int /*<<< orphan*/  transport_lock; } ;
struct rpc_task {int dummy; } ;
struct TYPE_2__ {int buflen; } ;
struct rpc_rqst {TYPE_1__ rq_private_buf; struct rpc_task* rq_task; } ;
typedef  int /*<<< orphan*/  _xid ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDP_MIB_INDATAGRAMS ; 
 int /*<<< orphan*/  UDP_MIB_INERRORS ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC8 (struct sk_buff*,int,int,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC9 (struct sock*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_task*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rpc_task*,int) ; 
 struct rpc_xprt* FUNC14 (struct sock*) ; 
 struct rpc_rqst* FUNC15 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct sock *sk, int len)
{
	struct rpc_task *task;
	struct rpc_xprt *xprt;
	struct rpc_rqst *rovr;
	struct sk_buff *skb;
	int err, repsize, copied;
	u32 _xid;
	__be32 *xp;

	FUNC4(&sk->sk_callback_lock);
	FUNC2("RPC:       xs_udp_data_ready...\n");
	if (!(xprt = FUNC14(sk)))
		goto out;

	if ((skb = FUNC9(sk, 0, 1, &err)) == NULL)
		goto out;

	repsize = skb->len - sizeof(struct udphdr);
	if (repsize < 4) {
		FUNC2("RPC:       impossible RPC reply size %d!\n", repsize);
		goto dropit;
	}

	/* Copy the XID from the skb... */
	xp = FUNC8(skb, sizeof(struct udphdr),
				sizeof(_xid), &_xid);
	if (xp == NULL)
		goto dropit;

	/* Look up and lock the request corresponding to the given XID */
	FUNC10(&xprt->transport_lock);
	rovr = FUNC15(xprt, *xp);
	if (!rovr)
		goto out_unlock;
	task = rovr->rq_task;

	if ((copied = rovr->rq_private_buf.buflen) > repsize)
		copied = repsize;

	/* Suck it into the iovec, verify checksum if not done by hw. */
	if (FUNC1(&rovr->rq_private_buf, skb)) {
		FUNC0(sk, UDP_MIB_INERRORS);
		goto out_unlock;
	}

	FUNC0(sk, UDP_MIB_INDATAGRAMS);

	/* Something worked... */
	FUNC3(FUNC6(skb));

	FUNC12(task, copied);
	FUNC13(task, copied);

 out_unlock:
	FUNC11(&xprt->transport_lock);
 dropit:
	FUNC7(sk, skb);
 out:
	FUNC5(&sk->sk_callback_lock);
}