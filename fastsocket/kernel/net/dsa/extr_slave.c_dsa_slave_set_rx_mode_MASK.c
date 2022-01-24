#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct dsa_slave_priv {TYPE_2__* parent; } ;
struct TYPE_4__ {TYPE_1__* dst; } ;
struct TYPE_3__ {struct net_device* master_netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net_device*) ; 
 struct dsa_slave_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct dsa_slave_priv *p = FUNC2(dev);
	struct net_device *master = p->parent->dst->master_netdev;

	FUNC0(master, dev);
	FUNC1(master, dev);
}