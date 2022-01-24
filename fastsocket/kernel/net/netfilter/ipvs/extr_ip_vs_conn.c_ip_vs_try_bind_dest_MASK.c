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
struct ip_vs_protocol {int /*<<< orphan*/  appcnt; } ;
struct ip_vs_dest {int dummy; } ;
struct ip_vs_conn {scalar_t__ af; int /*<<< orphan*/  protocol; int /*<<< orphan*/ * packet_xmit; scalar_t__ app; int /*<<< orphan*/  flags; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_conn*,struct ip_vs_protocol*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_conn*,struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct ip_vs_conn*) ; 
 struct ip_vs_dest* FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ip_vs_protocol* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_conn*) ; 

struct ip_vs_dest *FUNC8(struct ip_vs_conn *cp)
{
	struct ip_vs_dest *dest;

	dest = FUNC5(cp->af, &cp->daddr,
			       cp->dport, &cp->vaddr, cp->vport,
			       cp->protocol, cp->fwmark, cp->flags);
	if (dest) {
		struct ip_vs_protocol *pp;

		/* Applications work depending on the forwarding method
		 * but better to reassign them always when binding dest */
		if (cp->app)
			FUNC7(cp);

		FUNC2(cp, dest);

		/* Update its packet transmitter */
		cp->packet_xmit = NULL;
#ifdef CONFIG_IP_VS_IPV6
		if (cp->af == AF_INET6)
			ip_vs_bind_xmit_v6(cp);
		else
#endif
			FUNC3(cp);

		/* netns version
		pd = ip_vs_proto_data_get(ip_vs_conn_net(cp), cp->protocol);
		if (pd && atomic_read(&pd->appcnt))
			ip_vs_bind_app(cp, pd->pp);
		*/
		/* RH note: differs from upstream commit 882a844bd5b */
		pp = FUNC6(cp->protocol);
		if (pp && FUNC0(&pp->appcnt))
			FUNC1(cp, pp);

	}
	return dest;
}