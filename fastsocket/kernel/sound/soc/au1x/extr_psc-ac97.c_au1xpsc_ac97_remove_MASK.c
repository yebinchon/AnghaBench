#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {struct TYPE_6__* ioarea; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 TYPE_1__* au1xpsc_ac97_workdata ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct platform_device *pdev,
				struct snd_soc_dai *dai)
{
	/* disable PSC completely */
	FUNC3(0, FUNC0(au1xpsc_ac97_workdata));
	FUNC2();
	FUNC3(PSC_CTRL_DISABLE, FUNC1(au1xpsc_ac97_workdata));
	FUNC2();

	FUNC4(au1xpsc_ac97_workdata->mmio);
	FUNC6(au1xpsc_ac97_workdata->ioarea);
	FUNC5(au1xpsc_ac97_workdata->ioarea);
	FUNC5(au1xpsc_ac97_workdata);
	au1xpsc_ac97_workdata = NULL;
}