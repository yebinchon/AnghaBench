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
typedef  int u_int16_t ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef  enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,struct nf_conn*,int,unsigned int,unsigned int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct sk_buff *skb,
		   __be32 newip,
		   u_int16_t port,
		   unsigned int matchoff,
		   unsigned int matchlen,
		   struct nf_conn *ct,
		   enum ip_conntrack_info ctinfo)
{
	char buffer[sizeof("|||65535|")];

	FUNC2(buffer, "|||%u|", port);

	FUNC1("calling nf_nat_mangle_tcp_packet\n");

	return FUNC0(skb, ct, ctinfo, matchoff,
					matchlen, buffer, FUNC3(buffer));
}