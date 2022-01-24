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
struct msm_rpc_endpoint {int dummy; } ;
struct inode {int /*<<< orphan*/  i_rdev; } ;
struct file {struct msm_rpc_endpoint* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct msm_rpc_endpoint* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	int rc;
	struct msm_rpc_endpoint *ept;

	rc = FUNC1(inode, filp);
	if (rc < 0)
		return rc;

	ept = FUNC0(inode->i_rdev);
	if (!ept)
		return -ENOMEM;

	filp->private_data = ept;
	return 0;
}