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
struct net_device {int flags; int /*<<< orphan*/  ip_ptr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * sysctl; } ;
struct in_device {TYPE_2__ cnf; int /*<<< orphan*/ * arp_parms; struct net_device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  devconf_dflt; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FORWARDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IFF_UP ; 
 scalar_t__ FUNC1 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 TYPE_3__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct in_device*) ; 
 struct in_device* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct in_device*) ; 

__attribute__((used)) static struct in_device *FUNC14(struct net_device *dev)
{
	struct in_device *in_dev;

	FUNC0();

	in_dev = FUNC10(sizeof(*in_dev), GFP_KERNEL);
	if (!in_dev)
		goto out;
	FUNC11(&in_dev->cnf, FUNC4(dev)->ipv4.devconf_dflt,
			sizeof(in_dev->cnf));

	in_dev->cnf.sysctl = NULL;
	in_dev->dev = dev;
	if ((in_dev->arp_parms = FUNC12(dev, &arp_tbl)) == NULL)
		goto out_kfree;
	if (FUNC1(in_dev->cnf, FORWARDING))
		FUNC2(dev);
	/* Reference in_dev->dev */
	FUNC3(dev);
	/* Account for reference dev->ip_ptr (below) */
	FUNC6(in_dev);

	FUNC5(in_dev);
	FUNC7(in_dev);
	if (dev->flags & IFF_UP)
		FUNC8(in_dev);

	/* we can receive as soon as ip_ptr is set -- do this last */
	FUNC13(dev->ip_ptr, in_dev);
out:
	return in_dev;
out_kfree:
	FUNC9(in_dev);
	in_dev = NULL;
	goto out;
}