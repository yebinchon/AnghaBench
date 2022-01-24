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
struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ __be32 ;
struct TYPE_4__ {struct in6_addr rcv_saddr; } ;
struct TYPE_3__ {scalar_t__ rcv_saddr; } ;

/* Variables and functions */
 int IPV6_ADDR_ANY ; 
 int IPV6_ADDR_MAPPED ; 
 struct in6_addr* FUNC0 (struct sock const*) ; 
 TYPE_2__* FUNC1 (struct sock const*) ; 
 scalar_t__ FUNC2 (struct sock const*) ; 
 TYPE_1__* FUNC3 (struct sock const*) ; 
 int FUNC4 (struct sock const*) ; 
 scalar_t__ FUNC5 (struct in6_addr const*,struct in6_addr const*) ; 
 int FUNC6 (struct in6_addr const*) ; 
 int FUNC7 (struct sock const*) ; 

int FUNC8(const struct sock *sk, const struct sock *sk2)
{
	const struct in6_addr *sk_rcv_saddr6 = &FUNC1(sk)->rcv_saddr;
	const struct in6_addr *sk2_rcv_saddr6 = FUNC0(sk2);
	__be32 sk_rcv_saddr = FUNC3(sk)->rcv_saddr;
	__be32 sk2_rcv_saddr = FUNC2(sk2);
	int sk_ipv6only = FUNC7(sk);
	int sk2_ipv6only = FUNC4(sk2);
	int addr_type = FUNC6(sk_rcv_saddr6);
	int addr_type2 = sk2_rcv_saddr6 ? FUNC6(sk2_rcv_saddr6) : IPV6_ADDR_MAPPED;

	/* if both are mapped, treat as IPv4 */
	if (addr_type == IPV6_ADDR_MAPPED && addr_type2 == IPV6_ADDR_MAPPED)
		return (!sk2_ipv6only &&
			(!sk_rcv_saddr || !sk2_rcv_saddr ||
			  sk_rcv_saddr == sk2_rcv_saddr));

	if (addr_type2 == IPV6_ADDR_ANY &&
	    !(sk2_ipv6only && addr_type == IPV6_ADDR_MAPPED))
		return 1;

	if (addr_type == IPV6_ADDR_ANY &&
	    !(sk_ipv6only && addr_type2 == IPV6_ADDR_MAPPED))
		return 1;

	if (sk2_rcv_saddr6 &&
	    FUNC5(sk_rcv_saddr6, sk2_rcv_saddr6))
		return 1;

	return 0;
}