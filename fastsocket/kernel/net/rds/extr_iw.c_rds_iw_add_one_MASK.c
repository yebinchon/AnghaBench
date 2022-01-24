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
struct rds_iw_device {int dma_local_lkey; int device_cap_flags; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; int /*<<< orphan*/  list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  cm_id_list; int /*<<< orphan*/ * mr_pool; struct ib_device* dev; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_qp_wr; int /*<<< orphan*/  max_wrs; int /*<<< orphan*/  spinlock; } ;
struct ib_device_attr {int dma_local_lkey; int device_cap_flags; int /*<<< orphan*/ * pd; int /*<<< orphan*/ * mr; int /*<<< orphan*/  list; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  cm_id_list; int /*<<< orphan*/ * mr_pool; struct ib_device* dev; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_qp_wr; int /*<<< orphan*/  max_wrs; int /*<<< orphan*/  spinlock; } ;
struct ib_device {scalar_t__ node_type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int IB_DEVICE_LOCAL_DMA_LKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ RDMA_NODE_RNIC ; 
 int /*<<< orphan*/  RDS_IW_MAX_SGE ; 
 int /*<<< orphan*/ * FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct ib_device*,struct rds_iw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,int /*<<< orphan*/ *,struct rds_iw_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_iw_device*) ; 
 struct rds_iw_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rds_iw_client ; 
 int /*<<< orphan*/ * FUNC12 (struct rds_iw_device*) ; 
 int /*<<< orphan*/  rds_iw_devices ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct ib_device *device)
{
	struct rds_iw_device *rds_iwdev;
	struct ib_device_attr *dev_attr;

	/* Only handle iwarp devices */
	if (device->node_type != RDMA_NODE_RNIC)
		return;

	dev_attr = FUNC9(sizeof *dev_attr, GFP_KERNEL);
	if (!dev_attr)
		return;

	if (FUNC6(device, dev_attr)) {
		FUNC13("Query device failed for %s\n", device->name);
		goto free_attr;
	}

	rds_iwdev = FUNC9(sizeof *rds_iwdev, GFP_KERNEL);
	if (!rds_iwdev)
		goto free_attr;

	FUNC14(&rds_iwdev->spinlock);

	rds_iwdev->dma_local_lkey = !!(dev_attr->device_cap_flags & IB_DEVICE_LOCAL_DMA_LKEY);
	rds_iwdev->max_wrs = dev_attr->max_qp_wr;
	rds_iwdev->max_sge = FUNC11(dev_attr->max_sge, RDS_IW_MAX_SGE);

	rds_iwdev->dev = device;
	rds_iwdev->pd = FUNC2(device);
	if (FUNC1(rds_iwdev->pd))
		goto free_dev;

	if (!rds_iwdev->dma_local_lkey) {
		rds_iwdev->mr = FUNC5(rds_iwdev->pd,
					IB_ACCESS_REMOTE_READ |
					IB_ACCESS_REMOTE_WRITE |
					IB_ACCESS_LOCAL_WRITE);
		if (FUNC1(rds_iwdev->mr))
			goto err_pd;
	} else
		rds_iwdev->mr = NULL;

	rds_iwdev->mr_pool = FUNC12(rds_iwdev);
	if (FUNC1(rds_iwdev->mr_pool)) {
		rds_iwdev->mr_pool = NULL;
		goto err_mr;
	}

	FUNC0(&rds_iwdev->cm_id_list);
	FUNC0(&rds_iwdev->conn_list);
	FUNC10(&rds_iwdev->list, &rds_iw_devices);

	FUNC7(device, &rds_iw_client, rds_iwdev);

	goto free_attr;

err_mr:
	if (rds_iwdev->mr)
		FUNC4(rds_iwdev->mr);
err_pd:
	FUNC3(rds_iwdev->pd);
free_dev:
	FUNC8(rds_iwdev);
free_attr:
	FUNC8(dev_attr);
}