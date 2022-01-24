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
struct rds_iw_device {int /*<<< orphan*/  spinlock; } ;
struct rds_iw_connection {int /*<<< orphan*/ * rds_iwdev; int /*<<< orphan*/  i_cm_id; int /*<<< orphan*/  iw_node; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iw_nodev_conns ; 
 int /*<<< orphan*/  iw_nodev_conns_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct rds_iw_device *rds_iwdev, struct rds_connection *conn)
{
	struct rds_iw_connection *ic = conn->c_transport_data;

	/* place conn on nodev_conns_list */
	FUNC5(&iw_nodev_conns_lock);

	FUNC6(&rds_iwdev->spinlock);
	FUNC0(FUNC3(&ic->iw_node));
	FUNC2(&ic->iw_node);
	FUNC8(&rds_iwdev->spinlock);

	FUNC1(&ic->iw_node, &iw_nodev_conns);

	FUNC7(&iw_nodev_conns_lock);

	FUNC4(ic->rds_iwdev, ic->i_cm_id);
	ic->rds_iwdev = NULL;
}