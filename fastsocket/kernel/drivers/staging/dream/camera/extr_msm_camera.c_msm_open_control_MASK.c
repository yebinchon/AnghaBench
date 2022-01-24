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
struct TYPE_2__ {int /*<<< orphan*/  ctrl_status_wait; int /*<<< orphan*/  ctrl_status_q; int /*<<< orphan*/  ctrl_status_q_lock; } ;
struct msm_control_device {TYPE_1__ ctrl_q; struct msm_control_device* pmsm; } ;
struct inode {int dummy; } ;
struct file {struct msm_control_device* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_control_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filep)
{
	int rc;

	struct msm_control_device *ctrl_pmsm =
		FUNC3(sizeof(struct msm_control_device), GFP_KERNEL);
	if (!ctrl_pmsm)
		return -ENOMEM;

	rc = FUNC4(inode, filep, 0);
	if (rc < 0)
		return rc;

	ctrl_pmsm->pmsm = filep->private_data;
	filep->private_data = ctrl_pmsm;
	FUNC5(&ctrl_pmsm->ctrl_q.ctrl_status_q_lock);
	FUNC1(&ctrl_pmsm->ctrl_q.ctrl_status_q);
	FUNC2(&ctrl_pmsm->ctrl_q.ctrl_status_wait);

	FUNC0("msm_open() open: rc = %d\n", rc);
	return rc;
}