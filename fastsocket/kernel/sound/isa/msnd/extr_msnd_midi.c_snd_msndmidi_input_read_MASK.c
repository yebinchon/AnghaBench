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
typedef  int u16 ;
struct snd_msndmidi {int /*<<< orphan*/  input_lock; TYPE_1__* dev; int /*<<< orphan*/  substream_input; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {int MIDQ; void* mappedbase; } ;

/* Variables and functions */
 int JQS_wHead ; 
 int JQS_wSize ; 
 int JQS_wTail ; 
 int MIDQ_DATA_BUFF ; 
 int /*<<< orphan*/  MSNDMIDI_MODE_BIT_INPUT_TRIGGER ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

void FUNC6(void *mpuv)
{
	unsigned long flags;
	struct snd_msndmidi *mpu = mpuv;
	void *pwMIDQData = mpu->dev->mappedbase + MIDQ_DATA_BUFF;

	FUNC2(&mpu->input_lock, flags);
	while (FUNC0(mpu->dev->MIDQ + JQS_wTail) !=
	       FUNC0(mpu->dev->MIDQ + JQS_wHead)) {
		u16 wTmp, val;
		val = FUNC0(pwMIDQData + 2 * FUNC0(mpu->dev->MIDQ + JQS_wHead));

			if (FUNC4(MSNDMIDI_MODE_BIT_INPUT_TRIGGER,
				     &mpu->mode))
				FUNC1(mpu->substream_input,
						    (unsigned char *)&val, 1);

		wTmp = FUNC0(mpu->dev->MIDQ + JQS_wHead) + 1;
		if (wTmp > FUNC0(mpu->dev->MIDQ + JQS_wSize))
			FUNC5(0,  mpu->dev->MIDQ + JQS_wHead);
		else
			FUNC5(wTmp,  mpu->dev->MIDQ + JQS_wHead);
	}
	FUNC3(&mpu->input_lock, flags);
}