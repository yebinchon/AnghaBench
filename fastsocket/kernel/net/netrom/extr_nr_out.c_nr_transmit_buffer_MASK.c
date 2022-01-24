#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {int /*<<< orphan*/  dest_addr; int /*<<< orphan*/  source_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_ADDR_LEN ; 
 unsigned char AX25_CBIT ; 
 unsigned char AX25_EBIT ; 
 unsigned char AX25_SSSID_SPARE ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 int /*<<< orphan*/  NR_NETWORK_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct nr_sock* FUNC4 (struct sock*) ; 
 unsigned char* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_netrom_network_ttl_initialiser ; 

void FUNC6(struct sock *sk, struct sk_buff *skb)
{
	struct nr_sock *nr = FUNC4(sk);
	unsigned char *dptr;

	/*
	 *	Add the protocol byte and network header.
	 */
	dptr = FUNC5(skb, NR_NETWORK_LEN);

	FUNC1(dptr, &nr->source_addr, AX25_ADDR_LEN);
	dptr[6] &= ~AX25_CBIT;
	dptr[6] &= ~AX25_EBIT;
	dptr[6] |= AX25_SSSID_SPARE;
	dptr += AX25_ADDR_LEN;

	FUNC1(dptr, &nr->dest_addr, AX25_ADDR_LEN);
	dptr[6] &= ~AX25_CBIT;
	dptr[6] |= AX25_EBIT;
	dptr[6] |= AX25_SSSID_SPARE;
	dptr += AX25_ADDR_LEN;

	*dptr++ = sysctl_netrom_network_ttl_initialiser;

	if (!FUNC3(skb, NULL)) {
		FUNC0(skb);
		FUNC2(sk, ENETUNREACH);
	}
}