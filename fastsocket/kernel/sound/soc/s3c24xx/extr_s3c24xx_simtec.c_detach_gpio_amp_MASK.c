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
struct s3c24xx_audio_simtec_pdata {scalar_t__* amp_gain; scalar_t__ amp_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct s3c24xx_audio_simtec_pdata *pd)
{
	if (pd->amp_gain[0] > 0) {
		FUNC0(pd->amp_gain[0]);
		FUNC0(pd->amp_gain[1]);
	}

	if (pd->amp_gpio > 0)
		FUNC0(pd->amp_gpio);
}