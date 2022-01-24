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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipip_net {int dummy; } ;
struct TYPE_2__ {scalar_t__ daddr; scalar_t__ saddr; } ;
struct ip_tunnel_parm {scalar_t__* name; TYPE_1__ iph; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; struct ip_tunnel* next; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int IFNAMSIZ ; 
 struct ip_tunnel** FUNC0 (struct ipip_net*,struct ip_tunnel_parm*) ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  ipip_net_id ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipip_net*,struct ip_tunnel*) ; 
 int /*<<< orphan*/  ipip_tunnel_setup ; 
 struct ipip_net* FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip_tunnel* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,scalar_t__*,int) ; 

__attribute__((used)) static struct ip_tunnel * FUNC14(struct net *net,
		struct ip_tunnel_parm *parms, int create)
{
	__be32 remote = parms->iph.daddr;
	__be32 local = parms->iph.saddr;
	struct ip_tunnel *t, **tp, *nt;
	struct net_device *dev;
	char name[IFNAMSIZ];
	struct ipip_net *ipn = FUNC8(net, ipip_net_id);

	for (tp = FUNC0(ipn, parms); (t = *tp) != NULL; tp = &t->next) {
		if (local == t->parms.iph.saddr && remote == t->parms.iph.daddr)
			return t;
	}
	if (!create)
		return NULL;

	if (parms->name[0])
		FUNC13(name, parms->name, IFNAMSIZ);
	else
		FUNC11(name, "tunl%%d");

	dev = FUNC1(sizeof(*t), name, ipip_tunnel_setup);
	if (dev == NULL)
		return NULL;

	FUNC4(dev, net);

	if (FUNC12(name, '%')) {
		if (FUNC2(dev, name) < 0)
			goto failed_free;
	}

	nt = FUNC9(dev);
	nt->parms = *parms;

	FUNC6(dev);

	if (FUNC10(dev) < 0)
		goto failed_free;

	FUNC3(dev);
	FUNC7(ipn, nt);
	return nt;

failed_free:
	FUNC5(dev);
	return NULL;
}