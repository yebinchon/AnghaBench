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
struct snd_soc_dapm_widget {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_E750_SPK_AMP_OFF ; 
 int SND_SOC_DAPM_POST_PMD ; 
 int SND_SOC_DAPM_PRE_PMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct snd_soc_dapm_widget *w,
				struct snd_kcontrol *kcontrol, int event)
{
	if (event & SND_SOC_DAPM_PRE_PMU)
		FUNC0(GPIO_E750_SPK_AMP_OFF, 0);
	else if (event & SND_SOC_DAPM_POST_PMD)
		FUNC0(GPIO_E750_SPK_AMP_OFF, 1);

	return 0;
}