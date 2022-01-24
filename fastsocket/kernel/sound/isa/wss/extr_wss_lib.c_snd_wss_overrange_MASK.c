#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_wss {TYPE_2__* capture_substream; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  overrange; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4231_TEST_INIT ; 
 unsigned char FUNC0 (struct snd_wss*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct snd_wss *chip)
{
	unsigned long flags;
	unsigned char res;

	FUNC1(&chip->reg_lock, flags);
	res = FUNC0(chip, CS4231_TEST_INIT);
	FUNC2(&chip->reg_lock, flags);
	if (res & (0x08 | 0x02))	/* detect overrange only above 0dB; may be user selectable? */
		chip->capture_substream->runtime->overrange++;
}