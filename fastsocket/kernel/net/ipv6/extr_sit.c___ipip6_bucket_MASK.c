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
struct sit_net {struct ip_tunnel*** tunnels; } ;
struct TYPE_2__ {scalar_t__ saddr; scalar_t__ daddr; } ;
struct ip_tunnel_parm {TYPE_1__ iph; } ;
struct ip_tunnel {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 

__attribute__((used)) static struct ip_tunnel **FUNC1(struct sit_net *sitn,
		struct ip_tunnel_parm *parms)
{
	__be32 remote = parms->iph.daddr;
	__be32 local = parms->iph.saddr;
	unsigned h = 0;
	int prio = 0;

	if (remote) {
		prio |= 2;
		h ^= FUNC0(remote);
	}
	if (local) {
		prio |= 1;
		h ^= FUNC0(local);
	}
	return &sitn->tunnels[prio][h];
}