#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct xt_socket_mtinfo1 {int flags; } ;
struct xt_match_param {int /*<<< orphan*/  in; } ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nf_conn {int status; TYPE_7__* tuplehash; } ;
struct iphdr {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  _hdr ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_18__ {scalar_t__ rcv_saddr; scalar_t__ transparent; } ;
struct TYPE_17__ {scalar_t__ tw_transparent; } ;
struct TYPE_12__ {int /*<<< orphan*/  port; } ;
struct TYPE_11__ {int /*<<< orphan*/  port; } ;
struct TYPE_13__ {TYPE_3__ udp; TYPE_2__ tcp; } ;
struct TYPE_10__ {int /*<<< orphan*/  ip; } ;
struct TYPE_14__ {TYPE_4__ u; TYPE_1__ u3; } ;
struct TYPE_15__ {TYPE_5__ src; } ;
struct TYPE_16__ {TYPE_6__ tuple; } ;

/* Variables and functions */
 scalar_t__ IPPROTO_ICMP ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int IPS_SRC_NAT_DONE ; 
 size_t IP_CT_DIR_ORIGINAL ; 
 int IP_CT_ESTABLISHED ; 
 int IP_CT_IS_REPLY ; 
 int IP_CT_RELATED ; 
 int /*<<< orphan*/  NFT_LOOKUP_ANY ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int XT_SOCKET_TRANSPARENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff const*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC2 (struct sock*) ; 
 TYPE_8__* FUNC3 (struct sock*) ; 
 struct iphdr* FUNC4 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff const*) ; 
 struct nf_conn const nf_conntrack_untracked ; 
 struct nf_conn* FUNC6 (struct sk_buff const*,int*) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sock*) ; 
 struct udphdr* FUNC10 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct udphdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static bool
FUNC12(const struct sk_buff *skb, const struct xt_match_param *par,
	     const struct xt_socket_mtinfo1 *info)
{
	const struct iphdr *iph = FUNC4(skb);
	struct udphdr _hdr, *hp = NULL;
	struct sock *sk;
	__be32 daddr, saddr;
	__be16 dport, sport;
	u8 protocol;
#ifdef XT_SOCKET_HAVE_CONNTRACK
	struct nf_conn const *ct;
	enum ip_conntrack_info ctinfo;
#endif

	if (iph->protocol == IPPROTO_UDP || iph->protocol == IPPROTO_TCP) {
		hp = FUNC10(skb, FUNC5(skb),
					sizeof(_hdr), &_hdr);
		if (hp == NULL)
			return false;

		protocol = iph->protocol;
		saddr = iph->saddr;
		sport = hp->source;
		daddr = iph->daddr;
		dport = hp->dest;

	} else if (iph->protocol == IPPROTO_ICMP) {
		if (FUNC1(skb, &protocol, &saddr, &daddr,
					&sport, &dport))
			return false;
	} else {
		return false;
	}

#ifdef XT_SOCKET_HAVE_CONNTRACK
	/* Do the lookup with the original socket address in case this is a
	 * reply packet of an established SNAT-ted connection. */

	ct = nf_ct_get(skb, &ctinfo);
	if (ct && (ct != &nf_conntrack_untracked) &&
	    ((iph->protocol != IPPROTO_ICMP &&
	      ctinfo == IP_CT_IS_REPLY + IP_CT_ESTABLISHED) ||
	     (iph->protocol == IPPROTO_ICMP &&
	      ctinfo == IP_CT_IS_REPLY + IP_CT_RELATED)) &&
	    (ct->status & IPS_SRC_NAT_DONE)) {

		daddr = ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.src.u3.ip;
		dport = (iph->protocol == IPPROTO_TCP) ?
			ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.src.u.tcp.port :
			ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple.src.u.udp.port;
	}
#endif

	sk = FUNC7(FUNC0(skb->dev), protocol,
				   saddr, daddr, sport, dport, par->in, NFT_LOOKUP_ANY);
	if (sk != NULL) {
		bool wildcard;
		bool transparent = true;

		/* Ignore sockets listening on INADDR_ANY */
		wildcard = (sk->sk_state != TCP_TIME_WAIT &&
			    FUNC2(sk)->rcv_saddr == 0);

		/* Ignore non-transparent sockets,
		   if XT_SOCKET_TRANSPARENT is used */
		if (info && info->flags & XT_SOCKET_TRANSPARENT)
			transparent = ((sk->sk_state != TCP_TIME_WAIT &&
					FUNC2(sk)->transparent) ||
				       (sk->sk_state == TCP_TIME_WAIT &&
					FUNC3(sk)->tw_transparent));

		FUNC11(sk);

		if (wildcard || !transparent)
			sk = NULL;
	}

	FUNC9("proto %hhu %pI4:%hu -> %pI4:%hu (orig %pI4:%hu) sock %p\n",
		 protocol, &saddr, FUNC8(sport),
		 &daddr, FUNC8(dport),
		 &iph->daddr, hp ? FUNC8(hp->dest) : 0, sk);

	return (sk != NULL);
}