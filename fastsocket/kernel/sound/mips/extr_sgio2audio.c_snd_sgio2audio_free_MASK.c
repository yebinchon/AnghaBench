#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct snd_sgio2audio {int /*<<< orphan*/  ring_base_dma; int /*<<< orphan*/  ring_base; int /*<<< orphan*/ * channel; } ;
struct TYPE_6__ {int /*<<< orphan*/  control; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_9__ {TYPE_2__ perif; } ;
struct TYPE_8__ {size_t idx; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  AUDIO_CONTROL_RESET ; 
 int /*<<< orphan*/  MACEISA_RINGBUFFERS_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_sgio2audio*) ; 
 TYPE_4__* mace ; 
 TYPE_3__* snd_sgio2_isr_table ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_sgio2audio *chip)
{
	int i;

	/* reset interface */
	FUNC5(AUDIO_CONTROL_RESET, &mace->perif.audio.control);
	FUNC4(1);
	FUNC5(0, &mace->perif.audio.control);

	/* release IRQ's */
	for (i = 0; i < FUNC0(snd_sgio2_isr_table); i++)
		FUNC2(snd_sgio2_isr_table[i].irq,
			 &chip->channel[snd_sgio2_isr_table[i].idx]);

	FUNC1(NULL, MACEISA_RINGBUFFERS_SIZE,
			  chip->ring_base, chip->ring_base_dma);

	/* release card data */
	FUNC3(chip);
	return 0;
}