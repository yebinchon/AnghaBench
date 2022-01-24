#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;
typedef  union nf_inet_addr __be16 ;
struct TYPE_5__ {int /*<<< orphan*/  ip; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip; } ;
struct TYPE_7__ {int choice; TYPE_1__ ip6Address; TYPE_2__ ipAddress; } ;
typedef  TYPE_3__ TransportAddress ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
#define  eTransportAddress_ip6Address 129 
#define  eTransportAddress_ipAddress 128 
 int /*<<< orphan*/  FUNC0 (union nf_inet_addr*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 

int FUNC3(struct nf_conn *ct, unsigned char *data,
		  TransportAddress *taddr,
		  union nf_inet_addr *addr, __be16 *port)
{
	const unsigned char *p;
	int len;

	switch (taddr->choice) {
	case eTransportAddress_ipAddress:
		if (FUNC2(ct) != AF_INET)
			return 0;
		p = data + taddr->ipAddress.ip;
		len = 4;
		break;
	case eTransportAddress_ip6Address:
		if (FUNC2(ct) != AF_INET6)
			return 0;
		p = data + taddr->ip6Address.ip;
		len = 16;
		break;
	default:
		return 0;
	}

	FUNC0(addr, p, len);
	FUNC1((void *)addr + len, 0, sizeof(*addr) - len);
	FUNC0(port, p + len, sizeof(__be16));

	return 1;
}