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
struct snd_ad1816a {unsigned int mode; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD1816A_CAPTURE_IRQ_ENABLE ; 
 int /*<<< orphan*/  AD1816A_CAPTURE_IRQ_PENDING ; 
 int /*<<< orphan*/  AD1816A_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  AD1816A_INTERRUPT_STATUS ; 
#define  AD1816A_MODE_CAPTURE 130 
 unsigned int AD1816A_MODE_OPEN ; 
#define  AD1816A_MODE_PLAYBACK 129 
#define  AD1816A_MODE_TIMER 128 
 int /*<<< orphan*/  AD1816A_PLAYBACK_IRQ_ENABLE ; 
 int /*<<< orphan*/  AD1816A_PLAYBACK_IRQ_PENDING ; 
 int /*<<< orphan*/  AD1816A_TIMER_IRQ_ENABLE ; 
 int /*<<< orphan*/  AD1816A_TIMER_IRQ_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ad1816a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ad1816a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct snd_ad1816a *chip, unsigned int mode)
{
	unsigned long flags;

	FUNC2(&chip->lock, flags);

	switch ((mode &= AD1816A_MODE_OPEN)) {
	case AD1816A_MODE_PLAYBACK:
		FUNC0(chip, AD1816A_INTERRUPT_STATUS,
			AD1816A_PLAYBACK_IRQ_PENDING, 0x00);
		FUNC1(chip, AD1816A_INTERRUPT_ENABLE,
			AD1816A_PLAYBACK_IRQ_ENABLE, 0x0000);
		break;
	case AD1816A_MODE_CAPTURE:
		FUNC0(chip, AD1816A_INTERRUPT_STATUS,
			AD1816A_CAPTURE_IRQ_PENDING, 0x00);
		FUNC1(chip, AD1816A_INTERRUPT_ENABLE,
			AD1816A_CAPTURE_IRQ_ENABLE, 0x0000);
		break;
	case AD1816A_MODE_TIMER:
		FUNC0(chip, AD1816A_INTERRUPT_STATUS,
			AD1816A_TIMER_IRQ_PENDING, 0x00);
		FUNC1(chip, AD1816A_INTERRUPT_ENABLE,
			AD1816A_TIMER_IRQ_ENABLE, 0x0000);
	}
	if (!((chip->mode &= ~mode) & AD1816A_MODE_OPEN))
		chip->mode = 0;

	FUNC3(&chip->lock, flags);
}