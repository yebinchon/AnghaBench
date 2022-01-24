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
struct TYPE_2__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_1__ sa; } ;
struct sock {int dummy; } ;
struct sctp_sock {int dummy; } ;
struct sctp_af {int (* cmp_addr ) (union sctp_addr const*,union sctp_addr const*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sock*) ; 
 struct sctp_af* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct sock*,union sctp_addr const*) ; 
 struct sock* FUNC3 (struct sctp_sock*) ; 
 int FUNC4 (union sctp_addr const*,union sctp_addr const*) ; 

__attribute__((used)) static int FUNC5(const union sctp_addr *addr1,
			       const union sctp_addr *addr2,
			       struct sctp_sock *opt)
{
	struct sctp_af *af1, *af2;
	struct sock *sk = FUNC3(opt);

	af1 = FUNC1(addr1->sa.sa_family);
	af2 = FUNC1(addr2->sa.sa_family);

	if (!af1 || !af2)
		return 0;

	/* If the socket is IPv6 only, v4 addrs will not match */
	if (FUNC0(sk) && af1 != af2)
		return 0;

	/* Today, wildcard AF_INET/AF_INET6. */
	if (FUNC2(sk, addr1) || FUNC2(sk, addr2))
		return 1;

	if (addr1->sa.sa_family != addr2->sa.sa_family)
		return 0;

	return af1->cmp_addr(addr1, addr2);
}