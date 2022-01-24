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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct udphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct udp_table {int dummy; } ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_3__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  pmtudisc; } ;
struct TYPE_6__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_5__ {int fatal; int errno; } ;
struct TYPE_4__ {int type; int code; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EMSGSIZE ; 
 int EPROTO ; 
#define  ICMP_DEST_UNREACH 131 
 int const ICMP_FRAG_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMP_MIB_INERRORS ; 
#define  ICMP_PARAMETERPROB 130 
#define  ICMP_SOURCE_QUENCH 129 
#define  ICMP_TIME_EXCEEDED 128 
 int /*<<< orphan*/  IP_PMTUDISC_DONT ; 
 int const NR_ICMP_UNREACH ; 
 scalar_t__ TCP_ESTABLISHED ; 
 struct sock* FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct udp_table*) ; 
 struct net* FUNC2 (TYPE_3__*) ; 
 TYPE_2__* icmp_err_convert ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 struct inet_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct sk_buff *skb, u32 info, struct udp_table *udptable)
{
	struct inet_sock *inet;
	struct iphdr *iph = (struct iphdr *)skb->data;
	struct udphdr *uh = (struct udphdr *)(skb->data+(iph->ihl<<2));
	const int type = FUNC3(skb)->type;
	const int code = FUNC3(skb)->code;
	struct sock *sk;
	int harderr;
	int err;
	struct net *net = FUNC2(skb->dev);

	sk = FUNC1(net, iph->daddr, uh->dest,
			iph->saddr, uh->source, skb->dev->ifindex, udptable);
	if (sk == NULL) {
		FUNC0(net, ICMP_MIB_INERRORS);
		return;	/* No socket for error */
	}

	err = 0;
	harderr = 0;
	inet = FUNC4(sk);

	switch (type) {
	default:
	case ICMP_TIME_EXCEEDED:
		err = EHOSTUNREACH;
		break;
	case ICMP_SOURCE_QUENCH:
		goto out;
	case ICMP_PARAMETERPROB:
		err = EPROTO;
		harderr = 1;
		break;
	case ICMP_DEST_UNREACH:
		if (code == ICMP_FRAG_NEEDED) { /* Path MTU discovery */
			if (inet->pmtudisc != IP_PMTUDISC_DONT) {
				err = EMSGSIZE;
				harderr = 1;
				break;
			}
			goto out;
		}
		err = EHOSTUNREACH;
		if (code <= NR_ICMP_UNREACH) {
			harderr = icmp_err_convert[code].fatal;
			err = icmp_err_convert[code].errno;
		}
		break;
	}

	/*
	 *      RFC1122: OK.  Passes ICMP errors back to application, as per
	 *	4.1.3.3.
	 */
	if (!inet->recverr) {
		if (!harderr || sk->sk_state != TCP_ESTABLISHED)
			goto out;
	} else {
		FUNC5(sk, skb, err, uh->dest, info, (u8 *)(uh+1));
	}
	sk->sk_err = err;
	sk->sk_error_report(sk);
out:
	FUNC6(sk);
}