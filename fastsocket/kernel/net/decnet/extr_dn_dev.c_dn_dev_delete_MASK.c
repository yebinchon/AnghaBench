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
struct net_device {struct dn_dev* dn_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* down ) (struct net_device*) ;} ;
struct dn_dev {scalar_t__ peer; scalar_t__ router; int /*<<< orphan*/  neigh_parms; TYPE_1__ parms; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 int /*<<< orphan*/  FUNC3 (struct dn_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev)
{
	struct dn_dev *dn_db = dev->dn_ptr;

	if (dn_db == NULL)
		return;

	FUNC0(&dn_db->timer);
	FUNC2(&dn_db->parms);
	FUNC1(dev);
	FUNC4(&dn_neigh_table, dev);

	if (dn_db->parms.down)
		dn_db->parms.down(dev);

	dev->dn_ptr = NULL;

	FUNC5(&dn_neigh_table, dn_db->neigh_parms);
	FUNC4(&dn_neigh_table, dev);

	if (dn_db->router)
		FUNC6(dn_db->router);
	if (dn_db->peer)
		FUNC6(dn_db->peer);

	FUNC3(dn_db);
}