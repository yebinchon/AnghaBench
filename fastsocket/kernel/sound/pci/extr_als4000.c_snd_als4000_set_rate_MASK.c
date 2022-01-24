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
struct snd_sb {int mode; } ;

/* Variables and functions */
 unsigned int SB_DSP_SAMPLE_RATE_OUT ; 
 int SB_RATE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct snd_sb*,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct snd_sb *chip, unsigned int rate)
{
	if (!(chip->mode & SB_RATE_LOCK)) {
		FUNC0(chip, SB_DSP_SAMPLE_RATE_OUT);
		FUNC0(chip, rate>>8);
		FUNC0(chip, rate);
	}
}