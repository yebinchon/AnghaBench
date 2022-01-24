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
 int /*<<< orphan*/  AKITA_GPIO_MIC_BIAS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SPITZ_GPIO_MIC_BIAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *k, int event)
{
	if (FUNC3() || FUNC4())
		FUNC1(SPITZ_GPIO_MIC_BIAS,
				FUNC0(event));

	if (FUNC2())
		FUNC1(AKITA_GPIO_MIC_BIAS,
				FUNC0(event));

	return 0;
}