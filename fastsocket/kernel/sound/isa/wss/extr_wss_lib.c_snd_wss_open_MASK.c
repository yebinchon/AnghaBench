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
struct snd_wss {unsigned int mode; int hardware; int* image; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; scalar_t__ single_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CS4231_IRQ_ENABLE ; 
 size_t CS4231_IRQ_STATUS ; 
 size_t CS4231_PIN_CTRL ; 
 int CS4231_PLAYBACK_IRQ ; 
 int CS4231_RECORD_IRQ ; 
 int CS4231_TIMER_IRQ ; 
 int EAGAIN ; 
 int /*<<< orphan*/  STATUS ; 
 int WSS_HW_AD1848_MASK ; 
 int WSS_MODE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_wss*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_wss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_wss *chip, unsigned int mode)
{
	unsigned long flags;

	FUNC1(&chip->open_mutex);
	if ((chip->mode & mode) ||
	    ((chip->mode & WSS_MODE_OPEN) && chip->single_dma)) {
		FUNC2(&chip->open_mutex);
		return -EAGAIN;
	}
	if (chip->mode & WSS_MODE_OPEN) {
		chip->mode |= mode;
		FUNC2(&chip->open_mutex);
		return 0;
	}
	/* ok. now enable and ack CODEC IRQ */
	FUNC4(&chip->reg_lock, flags);
	if (!(chip->hardware & WSS_HW_AD1848_MASK)) {
		FUNC3(chip, CS4231_IRQ_STATUS,
			    CS4231_PLAYBACK_IRQ |
			    CS4231_RECORD_IRQ |
			    CS4231_TIMER_IRQ);
		FUNC3(chip, CS4231_IRQ_STATUS, 0);
	}
	FUNC6(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	FUNC6(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	chip->image[CS4231_PIN_CTRL] |= CS4231_IRQ_ENABLE;
	FUNC3(chip, CS4231_PIN_CTRL, chip->image[CS4231_PIN_CTRL]);
	if (!(chip->hardware & WSS_HW_AD1848_MASK)) {
		FUNC3(chip, CS4231_IRQ_STATUS,
			    CS4231_PLAYBACK_IRQ |
			    CS4231_RECORD_IRQ |
			    CS4231_TIMER_IRQ);
		FUNC3(chip, CS4231_IRQ_STATUS, 0);
	}
	FUNC5(&chip->reg_lock, flags);

	chip->mode = mode;
	FUNC2(&chip->open_mutex);
	return 0;
}