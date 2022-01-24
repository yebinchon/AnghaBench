#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_rawmidi_substream {TYPE_1__* rmidi; } ;
struct snd_msndmidi {int /*<<< orphan*/  input_lock; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {struct snd_msndmidi* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSNDMIDI_MODE_BIT_INPUT_TRIGGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_msndmidi*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_msndmidi*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct snd_rawmidi_substream *substream,
					int up)
{
	unsigned long flags;
	struct snd_msndmidi *mpu;

	FUNC3("snd_msndmidi_input_trigger(, %i)\n", up);

	mpu = substream->rmidi->private_data;
	FUNC4(&mpu->input_lock, flags);
	if (up) {
		if (!FUNC6(MSNDMIDI_MODE_BIT_INPUT_TRIGGER,
				      &mpu->mode))
			FUNC1(mpu);
	} else {
		FUNC0(MSNDMIDI_MODE_BIT_INPUT_TRIGGER, &mpu->mode);
	}
	FUNC5(&mpu->input_lock, flags);
	if (up)
		FUNC2(mpu);
}