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
struct snd_es1688 {int trigger_value; int /*<<< orphan*/  capture_substream; int /*<<< orphan*/  playback_substream; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_AVAIL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_es1688*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct snd_es1688 *chip = dev_id;

	if (chip->trigger_value == 0x05)	/* ok.. playback is active */
		FUNC2(chip->playback_substream);
	if (chip->trigger_value == 0x0f)	/* ok.. capture is active */
		FUNC2(chip->capture_substream);

	FUNC1(FUNC0(chip, DATA_AVAIL));	/* ack interrupt */
	return IRQ_HANDLED;
}