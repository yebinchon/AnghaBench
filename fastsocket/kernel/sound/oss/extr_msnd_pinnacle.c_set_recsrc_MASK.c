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
struct TYPE_4__ {unsigned long recsrc; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_HAVEDIGITAL ; 
 int /*<<< orphan*/  HDEXAR_SET_ANA_IN ; 
 int /*<<< orphan*/  HDEXAR_SET_DAT_IN ; 
 int /*<<< orphan*/  HDEXAR_SET_SYNTH_IN ; 
 int /*<<< orphan*/  HDEX_AUX_REQ ; 
 int SOUND_MASK_DIGITAL1 ; 
 int SOUND_MASK_IMIX ; 
 int SOUND_MASK_SYNTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ dev ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned long FUNC3(unsigned long recsrc)
{
	if (dev.recsrc == recsrc)
		return dev.recsrc;
#ifdef HAVE_NORECSRC
	else if (recsrc == 0)
		dev.recsrc = 0;
#endif
	else
		dev.recsrc ^= recsrc;

#ifndef MSND_CLASSIC
	if (dev.recsrc & SOUND_MASK_IMIX) {
		if (FUNC1(&dev, 0, 0, HDEXAR_SET_ANA_IN) == 0)
			FUNC0(&dev, HDEX_AUX_REQ);
	}
	else if (dev.recsrc & SOUND_MASK_SYNTH) {
		if (FUNC1(&dev, 0, 0, HDEXAR_SET_SYNTH_IN) == 0)
			FUNC0(&dev, HDEX_AUX_REQ);
	}
	else if ((dev.recsrc & SOUND_MASK_DIGITAL1) && FUNC2(F_HAVEDIGITAL, &dev.flags)) {
		if (FUNC1(&dev, 0, 0, HDEXAR_SET_DAT_IN) == 0)
      			FUNC0(&dev, HDEX_AUX_REQ);
	}
	else {
#ifdef HAVE_NORECSRC
		/* Select no input (?) */
		dev.recsrc = 0;
#else
		dev.recsrc = SOUND_MASK_IMIX;
		if (FUNC1(&dev, 0, 0, HDEXAR_SET_ANA_IN) == 0)
			FUNC0(&dev, HDEX_AUX_REQ);
#endif
	}
#endif /* MSND_CLASSIC */

	return dev.recsrc;
}