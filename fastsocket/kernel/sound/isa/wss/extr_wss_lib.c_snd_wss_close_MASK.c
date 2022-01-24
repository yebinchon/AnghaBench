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
struct snd_wss {unsigned int mode; int hardware; int* image; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CS4231_IFACE_CTRL ; 
 int CS4231_IRQ_ENABLE ; 
 size_t CS4231_IRQ_STATUS ; 
 size_t CS4231_PIN_CTRL ; 
 int CS4231_PLAYBACK_ENABLE ; 
 int CS4231_PLAYBACK_PIO ; 
 int CS4231_RECORD_ENABLE ; 
 int CS4231_RECORD_PIO ; 
 int /*<<< orphan*/  STATUS ; 
 int WSS_HW_AD1848_MASK ; 
 int WSS_MODE_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_wss*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_wss*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_wss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct snd_wss *chip, unsigned int mode)
{
	unsigned long flags;

	FUNC1(&chip->open_mutex);
	chip->mode &= ~mode;
	if (chip->mode & WSS_MODE_OPEN) {
		FUNC2(&chip->open_mutex);
		return;
	}
	/* disable IRQ */
	FUNC6(&chip->reg_lock, flags);
	if (!(chip->hardware & WSS_HW_AD1848_MASK))
		FUNC5(chip, CS4231_IRQ_STATUS, 0);
	FUNC8(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	FUNC8(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	chip->image[CS4231_PIN_CTRL] &= ~CS4231_IRQ_ENABLE;
	FUNC5(chip, CS4231_PIN_CTRL, chip->image[CS4231_PIN_CTRL]);

	/* now disable record & playback */

	if (chip->image[CS4231_IFACE_CTRL] & (CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
					       CS4231_RECORD_ENABLE | CS4231_RECORD_PIO)) {
		FUNC7(&chip->reg_lock, flags);
		FUNC4(chip);
		FUNC6(&chip->reg_lock, flags);
		chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
						     CS4231_RECORD_ENABLE | CS4231_RECORD_PIO);
		FUNC5(chip, CS4231_IFACE_CTRL,
			    chip->image[CS4231_IFACE_CTRL]);
		FUNC7(&chip->reg_lock, flags);
		FUNC3(chip);
		FUNC6(&chip->reg_lock, flags);
	}

	/* clear IRQ again */
	if (!(chip->hardware & WSS_HW_AD1848_MASK))
		FUNC5(chip, CS4231_IRQ_STATUS, 0);
	FUNC8(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	FUNC8(chip, FUNC0(STATUS), 0);	/* clear IRQ */
	FUNC7(&chip->reg_lock, flags);

	chip->mode = 0;
	FUNC2(&chip->open_mutex);
}