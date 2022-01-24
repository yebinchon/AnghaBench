#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_device {int /*<<< orphan*/ * sync; } ;
struct msm_control_device {int /*<<< orphan*/  ctrl_q; struct msm_device* pmsm; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; struct msm_control_device* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctrl_status_q ; 
 int /*<<< orphan*/  FUNC2 (struct msm_control_device*) ; 
 int /*<<< orphan*/  pict_frame_q ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *node, struct file *filep)
{
	int rc;
	struct msm_control_device *ctrl_pmsm = filep->private_data;
	struct msm_device *pmsm = ctrl_pmsm->pmsm;
	FUNC3("msm_camera: RELEASE %s\n", filep->f_path.dentry->d_name.name);
	rc = FUNC1(pmsm->sync);
	if (!rc) {
		FUNC0(&ctrl_pmsm->ctrl_q, ctrl_status_q);
		FUNC0(pmsm->sync, pict_frame_q);
	}
	FUNC2(ctrl_pmsm);
	return rc;
}