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
struct snd_mixart {int chip_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_mixart*,int) ; 

__attribute__((used)) static void FUNC1(struct snd_mixart *chip)
{
	/* analog volumes can be set even if there is no pipe */
	FUNC0(chip, 0);
	/* analog levels for capture only on the first two chips */
	if(chip->chip_idx < 2) {
		FUNC0(chip, 1);
	}
	return;
}