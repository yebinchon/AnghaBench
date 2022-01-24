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
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip6_tnl_parm {scalar_t__* name; } ;
struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {struct ip6_tnl_parm parms; } ;

/* Variables and functions */
 int IFNAMSIZ ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  ip6_tnl_dev_setup ; 
 int /*<<< orphan*/  FUNC6 (struct ip6_tnl_net*,struct ip6_tnl*) ; 
 int /*<<< orphan*/  ip6_tnl_net_id ; 
 struct ip6_tnl_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 scalar_t__ FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__*,int) ; 

__attribute__((used)) static struct ip6_tnl *FUNC13(struct net *net, struct ip6_tnl_parm *p)
{
	struct net_device *dev;
	struct ip6_tnl *t;
	char name[IFNAMSIZ];
	int err;
	struct ip6_tnl_net *ip6n = FUNC7(net, ip6_tnl_net_id);

	if (p->name[0])
		FUNC12(name, p->name, IFNAMSIZ);
	else
		FUNC10(name, "ip6tnl%%d");

	dev = FUNC0(sizeof (*t), name, ip6_tnl_dev_setup);
	if (dev == NULL)
		goto failed;

	FUNC3(dev, net);

	if (FUNC11(name, '%')) {
		if (FUNC1(dev, name) < 0)
			goto failed_free;
	}

	t = FUNC8(dev);
	t->parms = *p;
	FUNC5(dev);

	if ((err = FUNC9(dev)) < 0)
		goto failed_free;

	FUNC2(dev);
	FUNC6(ip6n, t);
	return t;

failed_free:
	FUNC4(dev);
failed:
	return NULL;
}