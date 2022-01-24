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
struct svc_sock {struct sock* sk_sk; } ;
struct sock {scalar_t__ sk_protocol; int sk_family; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcv_saddr; } ;
struct TYPE_3__ {int num; int /*<<< orphan*/  rcv_saddr; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ IPPROTO_UDP ; 
#define  PF_INET 129 
#define  PF_INET6 128 
 TYPE_2__* FUNC0 (struct sock const*) ; 
 TYPE_1__* FUNC1 (struct sock const*) ; 
 int FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC3(struct svc_sock *svsk, char *buf, int remaining)
{
	const struct sock *sk = svsk->sk_sk;
	const char *proto_name = sk->sk_protocol == IPPROTO_UDP ?
							"udp" : "tcp";
	int len;

	switch (sk->sk_family) {
	case PF_INET:
		len = FUNC2(buf, remaining, "ipv4 %s %pI4 %d\n",
				proto_name,
				&FUNC1(sk)->rcv_saddr,
				FUNC1(sk)->num);
		break;
	case PF_INET6:
		len = FUNC2(buf, remaining, "ipv6 %s %pI6 %d\n",
				proto_name,
				&FUNC0(sk)->rcv_saddr,
				FUNC1(sk)->num);
		break;
	default:
		len = FUNC2(buf, remaining, "*unknown-%d*\n",
				sk->sk_family);
	}

	if (len >= remaining) {
		*buf = '\0';
		return -ENAMETOOLONG;
	}
	return len;
}