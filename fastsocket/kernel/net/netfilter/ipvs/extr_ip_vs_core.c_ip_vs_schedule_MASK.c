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
struct sk_buff {int /*<<< orphan*/  mark; } ;
struct ip_vs_service {int flags; scalar_t__ port; int /*<<< orphan*/  af; TYPE_1__* scheduler; int /*<<< orphan*/  fwmark; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; int /*<<< orphan*/  len; } ;
struct ip_vs_dest {scalar_t__ port; int /*<<< orphan*/  addr; } ;
struct ip_vs_conn_param {int dummy; } ;
struct ip_vs_conn {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  flags; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  vport; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; } ;
typedef  int /*<<< orphan*/  _ports ;
typedef  scalar_t__ __be16 ;
struct TYPE_2__ {struct ip_vs_dest* (* schedule ) (struct ip_vs_service*,struct sk_buff*) ;} ;

/* Variables and functions */
 scalar_t__ IPPROTO_UDP ; 
 unsigned int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_SVC_F_ONEPACKET ; 
 int IP_VS_SVC_F_PERSISTENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,struct ip_vs_conn_param*) ; 
 struct ip_vs_conn* FUNC5 (struct ip_vs_conn_param*,int /*<<< orphan*/ *,scalar_t__,unsigned int,struct ip_vs_dest*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ip_vs_conn*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_conn*) ; 
 struct ip_vs_conn* FUNC9 (struct ip_vs_service*,struct sk_buff*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct ip_vs_dest* FUNC14 (struct ip_vs_service*,struct sk_buff*) ; 

struct ip_vs_conn *
FUNC15(struct ip_vs_service *svc, struct sk_buff *skb)
{
	struct ip_vs_conn *cp = NULL;
	struct ip_vs_iphdr iph;
	struct ip_vs_dest *dest;
	__be16 _ports[2], *pptr;
	unsigned int flags;

	FUNC7(svc->af, FUNC13(skb), &iph);
	pptr = FUNC12(skb, iph.len, sizeof(_ports), _ports);
	if (pptr == NULL)
		return NULL;

	/*
	 *    Persistent service
	 */
	if (svc->flags & IP_VS_SVC_F_PERSISTENT) {
		return FUNC9(svc, skb, pptr[0], pptr[1]);
	}

	/*
	 *    Non-persistent service
	 */
	if (!svc->fwmark && pptr[1] != svc->port) {
		if (!svc->port)
			FUNC11("Schedule: port zero only supported "
			       "in persistent services, "
			       "check your ipvs configuration\n");
		return NULL;
	}

	dest = svc->scheduler->schedule(svc, skb);
	if (dest == NULL) {
		FUNC0(1, "Schedule: no dest found.\n");
		return NULL;
	}

	flags = (svc->flags & IP_VS_SVC_F_ONEPACKET
		 && iph.protocol == IPPROTO_UDP)?
		IP_VS_CONN_F_ONE_PACKET : 0;

	/*
	 *    Create a connection entry.
	 */
	{
		struct ip_vs_conn_param p;
		FUNC4(svc->af, iph.protocol, &iph.saddr,
				      pptr[0], &iph.daddr, pptr[1], &p);
		cp = FUNC5(&p, &dest->addr,
				    dest->port ? dest->port : pptr[1],
				    flags, dest, skb->mark);
		if (!cp)
			return NULL;
	}

	FUNC2(6, "Schedule fwd:%c c:%s:%u v:%s:%u "
		      "d:%s:%u conn->flags:%X conn->refcnt:%d\n",
		      FUNC8(cp),
		      FUNC1(svc->af, &cp->caddr), FUNC10(cp->cport),
		      FUNC1(svc->af, &cp->vaddr), FUNC10(cp->vport),
		      FUNC1(svc->af, &cp->daddr), FUNC10(cp->dport),
		      cp->flags, FUNC3(&cp->refcnt));

	FUNC6(cp, svc);
	return cp;
}