#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {scalar_t__ sk_state; int sk_err; int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;} ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct inet_sock {int /*<<< orphan*/  recverr; int /*<<< orphan*/  pmtudisc; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  sequence; } ;
struct TYPE_6__ {TYPE_1__ echo; } ;
struct icmphdr {int type; int code; TYPE_2__ un; } ;
struct TYPE_8__ {int /*<<< orphan*/  ifindex; } ;
struct TYPE_7__ {int fatal; int errno; } ;

/* Variables and functions */
 int EHOSTUNREACH ; 
 int EMSGSIZE ; 
 int EPROTO ; 
 int EREMOTEIO ; 
#define  ICMP_DEST_UNREACH 132 
 int ICMP_FRAG_NEEDED ; 
#define  ICMP_PARAMETERPROB 131 
#define  ICMP_REDIRECT 130 
#define  ICMP_SOURCE_QUENCH 129 
#define  ICMP_TIME_EXCEEDED 128 
 int /*<<< orphan*/  IP_PMTUDISC_DONT ; 
 int NR_ICMP_UNREACH ; 
 scalar_t__ TCP_ESTABLISHED ; 
 struct net* FUNC0 (TYPE_4__*) ; 
 TYPE_3__* icmp_err_convert ; 
 struct inet_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct sock* FUNC5 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

void FUNC9(struct sk_buff *skb, u32 info)
{
	struct iphdr *iph = (struct iphdr *)skb->data;
	struct icmphdr *icmph = (struct icmphdr *)(skb->data+(iph->ihl<<2));
	struct inet_sock *inet_sock;
	int type = icmph->type;
	int code = icmph->code;
	struct net *net = FUNC0(skb->dev);
	struct sock *sk;
	int harderr;
	int err;

	/* We assume the packet has already been checked by icmp_unreach */

	if (!FUNC4(icmph->type, icmph->code))
		return;

	FUNC6("ping_err(type=%04x,code=%04x,id=%04x,seq=%04x)\n", type,
		code, FUNC3(icmph->un.echo.id), FUNC3(icmph->un.echo.sequence));

	sk = FUNC5(net, iph->daddr, iph->saddr,
			    FUNC3(icmph->un.echo.id), skb->dev->ifindex);
	if (sk == NULL) {
		FUNC6("no socket, dropping\n");
		return;	/* No socket for error */
	}
	FUNC6("err on socket %p\n", sk);

	err = 0;
	harderr = 0;
	inet_sock = FUNC1(sk);

	switch (type) {
	default:
	case ICMP_TIME_EXCEEDED:
		err = EHOSTUNREACH;
		break;
	case ICMP_SOURCE_QUENCH:
		/* This is not a real error but ping wants to see it.
		 * Report it with some fake errno. */
		err = EREMOTEIO;
		break;
	case ICMP_PARAMETERPROB:
		err = EPROTO;
		harderr = 1;
		break;
	case ICMP_DEST_UNREACH:
		if (code == ICMP_FRAG_NEEDED) { /* Path MTU discovery */
			if (inet_sock->pmtudisc != IP_PMTUDISC_DONT) {
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
	case ICMP_REDIRECT:
		/* See ICMP_SOURCE_QUENCH */
		err = EREMOTEIO;
		break;
	}

	/*
	 *      RFC1122: OK.  Passes ICMP errors back to application, as per
	 *	4.1.3.3.
	 */
	if (!inet_sock->recverr) {
		if (!harderr || sk->sk_state != TCP_ESTABLISHED)
			goto out;
	} else {
		FUNC2(sk, skb, err, 0 /* no remote port */,
			 info, (u8 *)icmph);
	}
	sk->sk_err = err;
	sk->sk_error_report(sk);
out:
	FUNC7(sk);
}