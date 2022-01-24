#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {scalar_t__ type; struct dn_dev* dn_ptr; } ;
struct dn_dev_parms {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ (* up ) (struct net_device*) ;} ;
struct dn_dev {TYPE_1__ parms; int /*<<< orphan*/  neigh_parms; int /*<<< orphan*/  uptime; int /*<<< orphan*/  timer; struct net_device* dev; } ;

/* Variables and functions */
 int DN_DEV_LIST_SIZE ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct dn_dev_parms* dn_dev_list ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  dn_neigh_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct dn_dev*) ; 
 struct dn_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct dn_dev_parms*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

__attribute__((used)) static struct dn_dev *FUNC10(struct net_device *dev, int *err)
{
	int i;
	struct dn_dev_parms *p = dn_dev_list;
	struct dn_dev *dn_db;

	for(i = 0; i < DN_DEV_LIST_SIZE; i++, p++) {
		if (p->type == dev->type)
			break;
	}

	*err = -ENODEV;
	if (i == DN_DEV_LIST_SIZE)
		return NULL;

	*err = -ENOBUFS;
	if ((dn_db = FUNC4(sizeof(struct dn_dev), GFP_ATOMIC)) == NULL)
		return NULL;

	FUNC5(&dn_db->parms, p, sizeof(struct dn_dev_parms));
	FUNC8();
	dev->dn_ptr = dn_db;
	dn_db->dev = dev;
	FUNC2(&dn_db->timer);

	dn_db->uptime = jiffies;

	dn_db->neigh_parms = FUNC6(dev, &dn_neigh_table);
	if (!dn_db->neigh_parms) {
		dev->dn_ptr = NULL;
		FUNC3(dn_db);
		return NULL;
	}

	if (dn_db->parms.up) {
		if (dn_db->parms.up(dev) < 0) {
			FUNC7(&dn_neigh_table, dn_db->neigh_parms);
			dev->dn_ptr = NULL;
			FUNC3(dn_db);
			return NULL;
		}
	}

	FUNC1(dev, &dn_db->parms);

	FUNC0(dev);

	*err = 0;
	return dn_db;
}