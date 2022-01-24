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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_state; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_destruct; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_backlog_rcv; int /*<<< orphan*/  sk_prot; } ;
struct sk_buff {int dummy; } ;
struct pnpipehdr {scalar_t__ pipe_handle; int state_after_connect; int other_pep_type; scalar_t__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  resource; int /*<<< orphan*/  sobject; } ;
struct pep_sock {int peer_type; int /*<<< orphan*/  ackq; scalar_t__ init_enable; int /*<<< orphan*/  tx_fc; int /*<<< orphan*/  rx_fc; scalar_t__ rx_credits; int /*<<< orphan*/  tx_credits; scalar_t__ pipe_handle; int /*<<< orphan*/  ctrlreq_queue; TYPE_1__ pn_sk; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PF_PHONET ; 
 int /*<<< orphan*/  PN_LEGACY_FLOW_CONTROL ; 
#define  PN_PIPE_DISABLE 130 
#define  PN_PIPE_ENABLE 129 
 int /*<<< orphan*/  PN_PIPE_ERR_INVALID_PARAM ; 
 int /*<<< orphan*/  PN_PIPE_ERR_PEP_IN_USE ; 
#define  PN_PIPE_SB_CONNECT_REQ_PEP_SUB_TYPE 128 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_LISTEN ; 
 scalar_t__ TCP_SYN_RECV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__* FUNC3 (struct sk_buff*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct pep_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  pipe_destruct ; 
 int /*<<< orphan*/  pipe_do_rcv ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sockaddr_pn*) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_pn*) ; 
 struct pnpipehdr* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ *) ; 
 struct sock* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct sock *sk, struct sk_buff *skb)
{
	struct sock *newsk;
	struct pep_sock *newpn, *pn = FUNC5(sk);
	struct pnpipehdr *hdr;
	struct sockaddr_pn dst;
	u16 peer_type;
	u8 pipe_handle, enabled, n_sb;

	if (!FUNC9(skb, sizeof(*hdr) + 4))
		return -EINVAL;

	hdr = FUNC8(skb);
	pipe_handle = hdr->pipe_handle;
	switch (hdr->state_after_connect) {
	case PN_PIPE_DISABLE:
		enabled = 0;
		break;
	case PN_PIPE_ENABLE:
		enabled = 1;
		break;
	default:
		FUNC4(sk, skb, PN_PIPE_ERR_INVALID_PARAM);
		return -EINVAL;
	}
	peer_type = hdr->other_pep_type << 8;

	if (FUNC22(sk->sk_state != TCP_LISTEN) || FUNC11(sk)) {
		FUNC4(sk, skb, PN_PIPE_ERR_PEP_IN_USE);
		return -ENOBUFS;
	}

	/* Parse sub-blocks (options) */
	n_sb = hdr->data[4];
	while (n_sb > 0) {
		u8 type, buf[1], len = sizeof(buf);
		const u8 *data = FUNC3(skb, &type, &len, buf);

		if (data == NULL)
			return -EINVAL;
		switch (type) {
		case PN_PIPE_SB_CONNECT_REQ_PEP_SUB_TYPE:
			if (len < 1)
				return -EINVAL;
			peer_type = (peer_type & 0xff00) | data[0];
			break;
		}
		n_sb--;
	}

	skb = FUNC14(skb, GFP_ATOMIC);
	if (!skb)
		return -ENOMEM;

	/* Create a new to-be-accepted sock */
	newsk = FUNC13(FUNC20(sk), PF_PHONET, GFP_ATOMIC, sk->sk_prot);
	if (!newsk) {
		FUNC2(skb);
		return -ENOMEM;
	}
	FUNC19(NULL, newsk);
	newsk->sk_state = TCP_SYN_RECV;
	newsk->sk_backlog_rcv = pipe_do_rcv;
	newsk->sk_protocol = sk->sk_protocol;
	newsk->sk_destruct = pipe_destruct;

	newpn = FUNC5(newsk);
	FUNC6(skb, &dst);
	newpn->pn_sk.sobject = FUNC7(&dst);
	newpn->pn_sk.resource = pn->pn_sk.resource;
	FUNC17(&newpn->ctrlreq_queue);
	newpn->pipe_handle = pipe_handle;
	FUNC1(&newpn->tx_credits, 0);
	newpn->peer_type = peer_type;
	newpn->rx_credits = 0;
	newpn->rx_fc = newpn->tx_fc = PN_LEGACY_FLOW_CONTROL;
	newpn->init_enable = enabled;

	FUNC0(!FUNC15(&newsk->sk_receive_queue));
	FUNC16(&newsk->sk_receive_queue, skb);
	if (!FUNC18(sk, SOCK_DEAD))
		sk->sk_data_ready(sk, 0);

	FUNC10(sk);
	FUNC12(newsk, &pn->ackq);
	return 0;
}