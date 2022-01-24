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
struct platform_device {int dummy; } ;
struct msm_vfe_callback {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct platform_device*) ; 
 int FUNC1 (struct msm_vfe_callback*,struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfe_syncdata ; 

__attribute__((used)) static int FUNC2(struct msm_vfe_callback *presp,
	struct platform_device *dev)
{
	int rc = 0;

	rc = FUNC1(presp, dev, vfe_syncdata);
	if (rc < 0)
		return rc;

	/* Bring up all the required GPIOs and Clocks */
	return FUNC0(dev);
}