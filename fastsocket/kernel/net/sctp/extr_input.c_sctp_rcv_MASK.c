#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ pkt_type; int len; } ;
struct sctphdr {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_ep_common {int /*<<< orphan*/  inqueue; struct sock* sk; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; struct sctp_transport* transport; struct sctphdr* sctp_hdr; } ;
struct sctp_association {struct sctp_ep_common base; } ;
struct sctp_af {scalar_t__ (* skb_iif ) (struct sk_buff*) ;int /*<<< orphan*/  (* addr_valid ) (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ;int /*<<< orphan*/  (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
struct TYPE_6__ {struct sctp_chunk* chunk; } ;
struct TYPE_5__ {int /*<<< orphan*/  version; } ;
struct TYPE_4__ {struct sctp_endpoint* ep; } ;

/* Variables and functions */
 scalar_t__ PACKET_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SCTP_MIB_INSCTPPACKS ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_BACKLOG ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_DISCARDS ; 
 int /*<<< orphan*/  SCTP_MIB_IN_PKT_SOFTIRQ ; 
 int /*<<< orphan*/  SCTP_MIB_OUTOFBLUES ; 
 int /*<<< orphan*/  XFRM_POLICY_IN ; 
 struct sctp_association* FUNC2 (struct sk_buff*,union sctp_addr*,union sctp_addr*,struct sctp_transport**) ; 
 struct sctp_endpoint* FUNC3 (union sctp_addr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  sctp_checksum_disable ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC14 (struct sk_buff*,struct sctp_association*,struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_endpoint*) ; 
 struct sctp_af* FUNC17 (int) ; 
 struct sock* FUNC18 () ; 
 struct sctphdr* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sctp_chunk*,union sctp_addr*,union sctp_addr*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct sctp_chunk*) ; 
 scalar_t__ FUNC22 (struct sk_buff*) ; 
 scalar_t__ FUNC23 (struct sk_buff*) ; 
 TYPE_1__* FUNC24 (struct sock*) ; 
 scalar_t__ FUNC25 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*) ; 
 scalar_t__ FUNC27 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC28 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct sk_buff*) ; 
 scalar_t__ FUNC30 (struct sock*) ; 
 int /*<<< orphan*/  FUNC31 (union sctp_addr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC32 (union sctp_addr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC33 (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC34 (union sctp_addr*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC35 (struct sk_buff*) ; 
 scalar_t__ FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,int) ; 

int FUNC38(struct sk_buff *skb)
{
	struct sock *sk;
	struct sctp_association *asoc;
	struct sctp_endpoint *ep = NULL;
	struct sctp_ep_common *rcvr;
	struct sctp_transport *transport = NULL;
	struct sctp_chunk *chunk;
	struct sctphdr *sh;
	union sctp_addr src;
	union sctp_addr dest;
	int family;
	struct sctp_af *af;

	if (skb->pkt_type!=PACKET_HOST)
		goto discard_it;

	FUNC0(SCTP_MIB_INSCTPPACKS);

	if (FUNC27(skb))
		goto discard_it;

	sh = FUNC19(skb);

	/* Pull up the IP and SCTP headers. */
	FUNC4(skb, FUNC29(skb));
	if (skb->len < sizeof(struct sctphdr))
		goto discard_it;
	if (!sctp_checksum_disable && !FUNC26(skb) &&
		  FUNC22(skb) < 0)
		goto discard_it;

	FUNC28(skb, sizeof(struct sctphdr));

	/* Make sure we at least have chunk headers worth of data left. */
	if (skb->len < sizeof(struct sctp_chunkhdr))
		goto discard_it;

	family = FUNC6(FUNC5(skb)->version);
	af = FUNC17(family);
	if (FUNC36(!af))
		goto discard_it;

	/* Initialize local addresses for lookups. */
	af->from_skb(&src, skb, 1);
	af->from_skb(&dest, skb, 0);

	/* If the packet is to or from a non-unicast address,
	 * silently discard the packet.
	 *
	 * This is not clearly defined in the RFC except in section
	 * 8.4 - OOTB handling.  However, based on the book "Stream Control
	 * Transmission Protocol" 2.1, "It is important to note that the
	 * IP address of an SCTP transport address must be a routable
	 * unicast address.  In other words, IP multicast addresses and
	 * IP broadcast addresses cannot be used in an SCTP transport
	 * address."
	 */
	if (!af->addr_valid(&src, NULL, skb) ||
	    !af->addr_valid(&dest, NULL, skb))
		goto discard_it;

	asoc = FUNC2(skb, &src, &dest, &transport);

	if (!asoc)
		ep = FUNC3(&dest);

	/* Retrieve the common input handling substructure. */
	rcvr = asoc ? &asoc->base : &ep->base;
	sk = rcvr->sk;

	/*
	 * If a frame arrives on an interface and the receiving socket is
	 * bound to another interface, via SO_BINDTODEVICE, treat it as OOTB
	 */
	if (sk->sk_bound_dev_if && (sk->sk_bound_dev_if != af->skb_iif(skb)))
	{
		if (asoc) {
			FUNC10(asoc);
			asoc = NULL;
		} else {
			FUNC16(ep);
			ep = NULL;
		}
		sk = FUNC18();
		ep = FUNC24(sk)->ep;
		FUNC15(ep);
		rcvr = &ep->base;
	}

	/*
	 * RFC 2960, 8.4 - Handle "Out of the blue" Packets.
	 * An SCTP packet is called an "out of the blue" (OOTB)
	 * packet if it is correctly formed, i.e., passed the
	 * receiver's checksum check, but the receiver is not
	 * able to identify the association to which this
	 * packet belongs.
	 */
	if (!asoc) {
		if (FUNC23(skb)) {
			FUNC0(SCTP_MIB_OUTOFBLUES);
			goto discard_release;
		}
	}

	if (!FUNC37(sk, XFRM_POLICY_IN, skb, family))
		goto discard_release;
	FUNC8(skb);

	if (FUNC25(sk, skb))
		goto discard_release;

	/* Create an SCTP packet structure. */
	chunk = FUNC14(skb, asoc, sk);
	if (!chunk)
		goto discard_release;
	FUNC1(skb)->chunk = chunk;

	/* Remember what endpoint is to handle this packet. */
	chunk->rcvr = rcvr;

	/* Remember the SCTP header. */
	chunk->sctp_hdr = sh;

	/* Set the source and destination addresses of the incoming chunk.  */
	FUNC20(chunk, &src, &dest);

	/* Remember where we came from.  */
	chunk->transport = transport;

	/* Acquire access to the sock lock. Note: We are safe from other
	 * bottom halves on this lock, but a user may be in the lock too,
	 * so check if it is busy.
	 */
	FUNC11(sk);

	if (sk != rcvr->sk) {
		/* Our cached sk is different from the rcvr->sk.  This is
		 * because migrate()/accept() may have moved the association
		 * to a new socket and released all the sockets.  So now we
		 * are holding a lock on the old socket while the user may
		 * be doing something with the new socket.  Switch our veiw
		 * of the current sk.
		 */
		FUNC12(sk);
		sk = rcvr->sk;
		FUNC11(sk);
	}

	if (FUNC30(sk)) {
		if (FUNC9(sk, skb)) {
			FUNC12(sk);
			FUNC13(chunk);
			skb = NULL; /* sctp_chunk_free already freed the skb */
			goto discard_release;
		}
		FUNC0(SCTP_MIB_IN_PKT_BACKLOG);
	} else {
		FUNC0(SCTP_MIB_IN_PKT_SOFTIRQ);
		FUNC21(&chunk->rcvr->inqueue, chunk);
	}

	FUNC12(sk);

	/* Release the asoc/ep ref we took in the lookup calls. */
	if (asoc)
		FUNC10(asoc);
	else
		FUNC16(ep);

	return 0;

discard_it:
	FUNC0(SCTP_MIB_IN_PKT_DISCARDS);
	FUNC7(skb);
	return 0;

discard_release:
	/* Release the asoc/ep ref we took in the lookup calls. */
	if (asoc)
		FUNC10(asoc);
	else
		FUNC16(ep);

	goto discard_it;
}