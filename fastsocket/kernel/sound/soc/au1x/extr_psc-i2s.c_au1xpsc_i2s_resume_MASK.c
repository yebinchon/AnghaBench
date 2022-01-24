#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* au1xpsc_i2s_workdata ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *cpu_dai)
{
	/* select I2S mode and PSC clock */
	FUNC3(PSC_CTRL_DISABLE, FUNC0(au1xpsc_i2s_workdata));
	FUNC2();
	FUNC3(0, FUNC1(au1xpsc_i2s_workdata));
	FUNC2();
	FUNC3(au1xpsc_i2s_workdata->pm[0],
			FUNC1(au1xpsc_i2s_workdata));
	FUNC2();

	return 0;
}