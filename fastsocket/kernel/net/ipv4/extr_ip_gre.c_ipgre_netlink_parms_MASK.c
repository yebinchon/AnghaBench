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
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  frag_off; void* tos; void* ttl; void* daddr; void* saddr; int /*<<< orphan*/  protocol; } ;
struct ip_tunnel_parm {TYPE_1__ iph; void* o_key; void* i_key; void* o_flags; void* i_flags; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 size_t IFLA_GRE_IFLAGS ; 
 size_t IFLA_GRE_IKEY ; 
 size_t IFLA_GRE_LINK ; 
 size_t IFLA_GRE_LOCAL ; 
 size_t IFLA_GRE_OFLAGS ; 
 size_t IFLA_GRE_OKEY ; 
 size_t IFLA_GRE_PMTUDISC ; 
 size_t IFLA_GRE_REMOTE ; 
 size_t IFLA_GRE_TOS ; 
 size_t IFLA_GRE_TTL ; 
 int /*<<< orphan*/  IPPROTO_GRE ; 
 int /*<<< orphan*/  IP_DF ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_tunnel_parm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 void* FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 void* FUNC6 (struct nlattr*) ; 

__attribute__((used)) static void FUNC7(struct nlattr *data[], struct nlattr *tb[],
			       struct ip_tunnel_parm *parms)
{
	FUNC2(parms, 0, sizeof(*parms));

	parms->iph.protocol = IPPROTO_GRE;

	if (!data)
		return;

	if (data[IFLA_GRE_LINK])
		parms->link = FUNC5(data[IFLA_GRE_LINK]);

	if (data[IFLA_GRE_IFLAGS])
		parms->i_flags = FUNC0(FUNC3(data[IFLA_GRE_IFLAGS]));

	if (data[IFLA_GRE_OFLAGS])
		parms->o_flags = FUNC0(FUNC3(data[IFLA_GRE_OFLAGS]));

	if (data[IFLA_GRE_IKEY])
		parms->i_key = FUNC4(data[IFLA_GRE_IKEY]);

	if (data[IFLA_GRE_OKEY])
		parms->o_key = FUNC4(data[IFLA_GRE_OKEY]);

	if (data[IFLA_GRE_LOCAL])
		parms->iph.saddr = FUNC4(data[IFLA_GRE_LOCAL]);

	if (data[IFLA_GRE_REMOTE])
		parms->iph.daddr = FUNC4(data[IFLA_GRE_REMOTE]);

	if (data[IFLA_GRE_TTL])
		parms->iph.ttl = FUNC6(data[IFLA_GRE_TTL]);

	if (data[IFLA_GRE_TOS])
		parms->iph.tos = FUNC6(data[IFLA_GRE_TOS]);

	if (!data[IFLA_GRE_PMTUDISC] || FUNC6(data[IFLA_GRE_PMTUDISC]))
		parms->iph.frag_off = FUNC1(IP_DF);
}