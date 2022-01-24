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
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POODLE_LOCOMO_GPIO_AMP_ON ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ poodle_locomo_device ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *k, int event)
{
	if (FUNC0(event))
		FUNC1(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_AMP_ON, 0);
	else
		FUNC1(&poodle_locomo_device.dev,
			POODLE_LOCOMO_GPIO_AMP_ON, 1);

	return 0;
}