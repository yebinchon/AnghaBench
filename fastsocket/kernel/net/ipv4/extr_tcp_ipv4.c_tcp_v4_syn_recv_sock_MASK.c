#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ user_mss; } ;
struct tcp_sock {int write_seq; scalar_t__ advmss; int /*<<< orphan*/  total_retrans; TYPE_1__ rx_opt; } ;
struct tcp_md5sig_key {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;
struct sock {int /*<<< orphan*/  sk_route_caps; int /*<<< orphan*/  sk_gso_type; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int /*<<< orphan*/  retrans; } ;
struct ip_options {scalar_t__ optlen; } ;
struct inet_sock {int id; int /*<<< orphan*/  daddr; int /*<<< orphan*/  mc_ttl; int /*<<< orphan*/  mc_index; int /*<<< orphan*/  opt; int /*<<< orphan*/  saddr; int /*<<< orphan*/  rcv_saddr; } ;
struct inet_request_sock {struct ip_options* opt; int /*<<< orphan*/  loc_addr; int /*<<< orphan*/  rmt_addr; } ;
struct dst_entry {int dummy; } ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; } ;
struct TYPE_9__ {int /*<<< orphan*/  tos; int /*<<< orphan*/  ttl; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcv_tos; } ;
struct TYPE_7__ {scalar_t__ snt_synack; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENDROPS ; 
 int /*<<< orphan*/  LINUX_MIB_LISTENOVERFLOWS ; 
 int /*<<< orphan*/  NETIF_F_GSO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_ADVMSS ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sock*) ; 
 scalar_t__ FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_entry*) ; 
 TYPE_5__* FUNC6 (struct sock*) ; 
 struct dst_entry* FUNC7 (struct sock*,struct request_sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct inet_request_sock* FUNC9 (struct request_sock*) ; 
 struct inet_sock* FUNC10 (struct sock*) ; 
 TYPE_4__* FUNC11 (struct sk_buff*) ; 
 int jiffies ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ip_options*) ; 
 scalar_t__ FUNC14 (struct sock*) ; 
 TYPE_3__* FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 struct sock* FUNC19 (struct sock*,struct request_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 TYPE_2__* FUNC22 (struct request_sock*) ; 
 struct tcp_sock* FUNC23 (struct sock*) ; 
 int /*<<< orphan*/  FUNC24 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ tcp_time_stamp ; 
 int /*<<< orphan*/  FUNC25 (struct sock*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct tcp_md5sig_key* FUNC26 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*,scalar_t__) ; 

struct sock *FUNC28(struct sock *sk, struct sk_buff *skb,
				  struct request_sock *req,
				  struct dst_entry *dst)
{
	struct inet_request_sock *ireq;
	struct inet_sock *newinet;
	struct tcp_sock *newtp;
	struct sock *newsk;
#ifdef CONFIG_TCP_MD5SIG
	struct tcp_md5sig_key *key;
#endif
	struct ip_options *inet_opt;

	if (FUNC14(sk))
		goto exit_overflow;

	if (!dst && (dst = FUNC7(sk, req)) == NULL)
		goto exit;

	newsk = FUNC19(sk, req, skb);
	if (!newsk)
		goto exit_nonewsk;

	newsk->sk_gso_type = SKB_GSO_TCPV4;
	FUNC16(newsk, dst);

	newtp		      = FUNC23(newsk);
	newinet		      = FUNC10(newsk);
	ireq		      = FUNC9(req);
	newinet->daddr	      = ireq->rmt_addr;
	newinet->rcv_saddr    = ireq->loc_addr;
	newinet->saddr	      = ireq->loc_addr;
	inet_opt	      = ireq->opt;
	FUNC13(newinet->opt, inet_opt);
	ireq->opt	      = NULL;
	newinet->mc_index     = FUNC8(skb);
	newinet->mc_ttl	      = FUNC11(skb)->ttl;
	FUNC15(newsk)->rcv_tos = FUNC11(skb)->tos;
	FUNC6(newsk)->icsk_ext_hdr_len = 0;
	if (inet_opt)
		FUNC6(newsk)->icsk_ext_hdr_len = inet_opt->optlen;
	newinet->id = newtp->write_seq ^ jiffies;

	FUNC21(newsk);
	FUNC24(newsk, FUNC4(dst));
	newtp->advmss = FUNC3(dst, RTAX_ADVMSS);
	if (FUNC23(sk)->rx_opt.user_mss &&
	    FUNC23(sk)->rx_opt.user_mss < newtp->advmss)
		newtp->advmss = FUNC23(sk)->rx_opt.user_mss;

	FUNC20(newsk);
	if (FUNC22(req)->snt_synack)
		FUNC27(newsk,
		    tcp_time_stamp - FUNC22(req)->snt_synack);
	newtp->total_retrans = req->retrans;

#ifdef CONFIG_TCP_MD5SIG
	/* Copy over the MD5 key from the original socket */
	if ((key = tcp_v4_md5_do_lookup(sk, newinet->daddr)) != NULL) {
		/*
		 * We're using one, so create a matching key
		 * on the newsk structure. If we fail to get
		 * memory, then we end up not copying the key
		 * across. Shucks.
		 */
		char *newkey = kmemdup(key->key, key->keylen, GFP_ATOMIC);
		if (newkey != NULL)
			tcp_v4_md5_do_add(newsk, newinet->daddr,
					  newkey, key->keylen);
		newsk->sk_route_caps &= ~NETIF_F_GSO_MASK;
	}
#endif

	if (FUNC2(sk, newsk) < 0) {
		FUNC18(newsk);
		goto exit;
	}
	FUNC1(newsk);

	return newsk;

exit_overflow:
	FUNC0(FUNC17(sk), LINUX_MIB_LISTENOVERFLOWS);
exit_nonewsk:
	FUNC5(dst);
exit:
	FUNC0(FUNC17(sk), LINUX_MIB_LISTENDROPS);
	return NULL;
}