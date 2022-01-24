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
struct sock {scalar_t__ sk_type; } ;
struct sk_buff {scalar_t__ len; void* protocol; TYPE_1__* dev; struct af_iucv_trans_hdr* head; } ;
struct iucv_sock {int msglimit; int /*<<< orphan*/  msg_recv; int /*<<< orphan*/  send_skb_q; TYPE_1__* hs_dev; struct iucv_message* src_name; struct iucv_message* src_user_id; struct iucv_message* dst_name; struct iucv_message* dst_user_id; } ;
struct iucv_message {int dummy; } ;
struct af_iucv_trans_hdr {int version; scalar_t__ flags; int window; int /*<<< orphan*/  iucv_hdr; int /*<<< orphan*/ * srcAppName; int /*<<< orphan*/ * srcUserID; int /*<<< orphan*/ * destAppName; int /*<<< orphan*/ * destUserID; void* magic; } ;
struct TYPE_2__ {int flags; scalar_t__ mtu; } ;

/* Variables and functions */
 scalar_t__ AF_IUCV_FLAG_SYN ; 
 scalar_t__ AF_IUCV_FLAG_WIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int EMSGSIZE ; 
 int ENETDOWN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_HLEN ; 
 void* ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_UP ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*) ; 
 struct iucv_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct iucv_message*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct af_iucv_trans_hdr*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct sk_buff* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct iucv_message *imsg, struct sock *sock,
		   struct sk_buff *skb, u8 flags)
{
	struct iucv_sock *iucv = FUNC5(sock);
	struct af_iucv_trans_hdr *phs_hdr;
	struct sk_buff *nskb;
	int err, confirm_recv = 0;

	FUNC8(skb->head, 0, ETH_HLEN);
	phs_hdr = (struct af_iucv_trans_hdr *)FUNC12(skb,
					sizeof(struct af_iucv_trans_hdr));
	FUNC14(skb);
	FUNC15(skb);
	FUNC12(skb, ETH_HLEN);
	FUNC14(skb);
	FUNC8(phs_hdr, 0, sizeof(struct af_iucv_trans_hdr));

	phs_hdr->magic = ETH_P_AF_IUCV;
	phs_hdr->version = 1;
	phs_hdr->flags = flags;
	if (flags == AF_IUCV_FLAG_SYN)
		phs_hdr->window = iucv->msglimit;
	else if ((flags == AF_IUCV_FLAG_WIN) || !flags) {
		confirm_recv = FUNC2(&iucv->msg_recv);
		phs_hdr->window = confirm_recv;
		if (confirm_recv)
			phs_hdr->flags = phs_hdr->flags | AF_IUCV_FLAG_WIN;
	}
	FUNC7(phs_hdr->destUserID, iucv->dst_user_id, 8);
	FUNC7(phs_hdr->destAppName, iucv->dst_name, 8);
	FUNC7(phs_hdr->srcUserID, iucv->src_user_id, 8);
	FUNC7(phs_hdr->srcAppName, iucv->src_name, 8);
	FUNC0(phs_hdr->destUserID, sizeof(phs_hdr->destUserID));
	FUNC0(phs_hdr->destAppName, sizeof(phs_hdr->destAppName));
	FUNC0(phs_hdr->srcUserID, sizeof(phs_hdr->srcUserID));
	FUNC0(phs_hdr->srcAppName, sizeof(phs_hdr->srcAppName));
	if (imsg)
		FUNC7(&phs_hdr->iucv_hdr, imsg, sizeof(struct iucv_message));

	skb->dev = iucv->hs_dev;
	if (!skb->dev)
		return -ENODEV;
	if (!(skb->dev->flags & IFF_UP) || !FUNC10(skb->dev))
		return -ENETDOWN;
	if (skb->len > skb->dev->mtu) {
		if (sock->sk_type == SOCK_SEQPACKET)
			return -EMSGSIZE;
		else
			FUNC16(skb, skb->dev->mtu);
	}
	skb->protocol = ETH_P_AF_IUCV;
	nskb = FUNC11(skb, GFP_ATOMIC);
	if (!nskb)
		return -ENOMEM;
	FUNC13(&iucv->send_skb_q, nskb);
	err = FUNC4(skb);
	if (FUNC9(err)) {
		FUNC17(nskb, &iucv->send_skb_q);
		FUNC6(nskb);
	} else {
		FUNC3(confirm_recv, &iucv->msg_recv);
		FUNC1(FUNC2(&iucv->msg_recv) < 0);
	}
	return FUNC9(err);
}