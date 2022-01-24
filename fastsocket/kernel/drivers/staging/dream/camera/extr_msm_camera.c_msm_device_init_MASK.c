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
struct msm_sync {int dummy; } ;
struct msm_device {struct msm_sync* sync; int /*<<< orphan*/  opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_devno ; 
 int /*<<< orphan*/  msm_fops_config ; 
 int /*<<< orphan*/  msm_fops_control ; 
 int /*<<< orphan*/  msm_fops_frame ; 
 int FUNC3 (struct msm_device*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct msm_device *pmsm,
		struct msm_sync *sync,
		int node)
{
	int dev_num = 3 * node;
	int rc = FUNC3(pmsm, node,
		FUNC1(FUNC0(msm_devno), dev_num),
		"control", &msm_fops_control);
	if (rc < 0) {
		FUNC5("error creating control node: %d\n", rc);
		return rc;
	}

	rc = FUNC3(pmsm + 1, node,
		FUNC1(FUNC0(msm_devno), dev_num + 1),
		"config", &msm_fops_config);
	if (rc < 0) {
		FUNC5("error creating config node: %d\n", rc);
		FUNC4(pmsm, FUNC1(FUNC0(msm_devno),
				dev_num));
		return rc;
	}

	rc = FUNC3(pmsm + 2, node,
		FUNC1(FUNC0(msm_devno), dev_num + 2),
		"frame", &msm_fops_frame);
	if (rc < 0) {
		FUNC5("error creating frame node: %d\n", rc);
		FUNC4(pmsm,
			FUNC1(FUNC0(msm_devno), dev_num));
		FUNC4(pmsm + 1,
			FUNC1(FUNC0(msm_devno), dev_num + 1));
		return rc;
	}

	FUNC2(&pmsm[0].opened, 0);
	FUNC2(&pmsm[1].opened, 0);
	FUNC2(&pmsm[2].opened, 0);

	pmsm[0].sync = sync;
	pmsm[1].sync = sync;
	pmsm[2].sync = sync;

	return rc;
}