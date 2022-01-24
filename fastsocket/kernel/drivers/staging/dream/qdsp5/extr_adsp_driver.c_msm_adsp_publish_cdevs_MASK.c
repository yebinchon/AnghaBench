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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct msm_adsp_module {TYPE_1__ pdev; int /*<<< orphan*/  name; } ;
struct adsp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adsp_class ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int adsp_device_count ; 
 scalar_t__ adsp_devices ; 
 int /*<<< orphan*/  adsp_devno ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(struct msm_adsp_module *modules, unsigned n)
{
	int rc;

	adsp_devices = FUNC8(sizeof(struct adsp_device) * n, GFP_KERNEL);
	if (!adsp_devices)
		return;

	adsp_class = FUNC5(THIS_MODULE, "adsp");
	if (FUNC0(adsp_class))
		goto fail_create_class;

	rc = FUNC4(&adsp_devno, 0, n, "adsp");
	if (rc < 0)
		goto fail_alloc_region;

	adsp_device_count = n;
	for (n = 0; n < adsp_device_count; n++) {
		FUNC3(adsp_devices + n,
			    modules[n].name, &modules[n].pdev.dev,
			    FUNC2(FUNC1(adsp_devno), n));
	}

	return;

fail_alloc_region:
	FUNC6(adsp_class);
fail_create_class:
	FUNC7(adsp_devices);
}