#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  PSC_CTRL_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* au1xpsc_ac97_workdata ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dai *dai)
{
	/* save interesting registers and disable PSC */
	au1xpsc_ac97_workdata->pm[0] =
			FUNC3(FUNC2(au1xpsc_ac97_workdata));

	FUNC5(0, FUNC0(au1xpsc_ac97_workdata));
	FUNC4();
	FUNC5(PSC_CTRL_DISABLE, FUNC1(au1xpsc_ac97_workdata));
	FUNC4();

	return 0;
}