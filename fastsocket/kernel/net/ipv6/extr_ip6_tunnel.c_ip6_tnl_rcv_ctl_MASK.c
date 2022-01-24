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
struct ip6_tnl_parm {int flags; int /*<<< orphan*/  raddr; int /*<<< orphan*/  laddr; scalar_t__ link; } ;
struct ip6_tnl {int /*<<< orphan*/  dev; struct ip6_tnl_parm parms; } ;

/* Variables and functions */
 int IP6_TNL_F_CAP_RCV ; 
 struct net_device* FUNC0 (struct net*,scalar_t__) ; 
 struct net* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct net*,int /*<<< orphan*/ *,struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline int FUNC6(struct ip6_tnl *t)
{
	struct ip6_tnl_parm *p = &t->parms;
	int ret = 0;
	struct net *net = FUNC1(t->dev);

	if (p->flags & IP6_TNL_F_CAP_RCV) {
		struct net_device *ldev = NULL;

		if (p->link)
			ldev = FUNC0(net, p->link);

		if ((FUNC3(&p->laddr) ||
		     FUNC5(FUNC4(net, &p->laddr, ldev, 0))) &&
		    FUNC5(!FUNC4(net, &p->raddr, NULL, 0)))
			ret = 1;

		if (ldev)
			FUNC2(ldev);
	}
	return ret;
}