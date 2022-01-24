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
struct snd_cs4231 {TYPE_2__* capture_substream; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__* runtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  overrange; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4231_TEST_INIT ; 
 unsigned char FUNC0 (struct snd_cs4231*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct snd_cs4231 *chip)
{
	unsigned long flags;
	unsigned char res;

	FUNC1(&chip->lock, flags);
	res = FUNC0(chip, CS4231_TEST_INIT);
	FUNC2(&chip->lock, flags);

	/* detect overrange only above 0dB; may be user selectable? */
	if (res & (0x08 | 0x02))
		chip->capture_substream->runtime->overrange++;
}