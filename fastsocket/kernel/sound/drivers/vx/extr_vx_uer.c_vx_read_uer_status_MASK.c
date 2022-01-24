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
struct vx_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUER ; 
 int VX_SUER_CLOCK_PRESENT_MASK ; 
 int VX_SUER_DATA_PRESENT_MASK ; 
#define  VX_SUER_FREQ_32KHz_MASK 130 
#define  VX_SUER_FREQ_44KHz_MASK 129 
#define  VX_SUER_FREQ_48KHz_MASK 128 
 int VX_SUER_FREQ_MASK ; 
 unsigned int VX_UER_MODE_CONSUMER ; 
 unsigned int VX_UER_MODE_NOT_PRESENT ; 
 unsigned int VX_UER_MODE_PROFESSIONAL ; 
 int FUNC0 (struct vx_core*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vx_core*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vx_core*) ; 
 scalar_t__ FUNC3 (struct vx_core*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vx_core *chip, unsigned int *mode)
{
	int val, freq;

	/* Default values */
	freq = 0;

	/* Read UER status */
	if (FUNC2(chip))
	    val = FUNC0(chip, CSUER);
	else
	    val = FUNC1(chip, CSUER);
	if (val < 0)
		return val;
	/* If clock is present, read frequency */
	if (val & VX_SUER_CLOCK_PRESENT_MASK) {
		switch (val & VX_SUER_FREQ_MASK) {
		case VX_SUER_FREQ_32KHz_MASK:
			freq = 32000;
			break;
		case VX_SUER_FREQ_44KHz_MASK:
			freq = 44100;
			break;
		case VX_SUER_FREQ_48KHz_MASK:
			freq = 48000;
			break;
		}
        }
	if (val & VX_SUER_DATA_PRESENT_MASK)
		/* bit 0 corresponds to consumer/professional bit */
		*mode = FUNC3(chip, 0) ?
			VX_UER_MODE_PROFESSIONAL : VX_UER_MODE_CONSUMER;
	else
		*mode = VX_UER_MODE_NOT_PRESENT;

	return freq;
}