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
struct rds_iw_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  conn_list; } ;
struct rds_iw_connection {struct rds_iw_device* rds_iwdev; int /*<<< orphan*/  iw_node; } ;
struct rds_connection {struct rds_iw_connection* c_transport_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iw_nodev_conns ; 
 int /*<<< orphan*/  iw_nodev_conns_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct rds_iw_device *rds_iwdev, struct rds_connection *conn)
{
	struct rds_iw_connection *ic = conn->c_transport_data;

	/* conn was previously on the nodev_conns_list */
	FUNC5(&iw_nodev_conns_lock);
	FUNC0(FUNC3(&iw_nodev_conns));
	FUNC0(FUNC3(&ic->iw_node));
	FUNC2(&ic->iw_node);

	FUNC4(&rds_iwdev->spinlock);
	FUNC1(&ic->iw_node, &rds_iwdev->conn_list);
	FUNC6(&rds_iwdev->spinlock);
	FUNC7(&iw_nodev_conns_lock);

	ic->rds_iwdev = rds_iwdev;
}