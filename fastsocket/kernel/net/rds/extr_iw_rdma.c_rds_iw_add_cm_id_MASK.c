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
struct rds_iw_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  cm_id_list; } ;
struct rds_iw_cm_id {int /*<<< orphan*/  list; struct rdma_cm_id* cm_id; } ;
struct rdma_cm_id {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rds_iw_cm_id* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct rds_iw_device *rds_iwdev, struct rdma_cm_id *cm_id)
{
	struct rds_iw_cm_id *i_cm_id;

	i_cm_id = FUNC0(sizeof *i_cm_id, GFP_KERNEL);
	if (!i_cm_id)
		return -ENOMEM;

	i_cm_id->cm_id = cm_id;

	FUNC2(&rds_iwdev->spinlock);
	FUNC1(&i_cm_id->list, &rds_iwdev->cm_id_list);
	FUNC3(&rds_iwdev->spinlock);

	return 0;
}