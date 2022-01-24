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
struct TYPE_4__ {int* levels; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
#define  SOUND_MIXER_BASS 130 
#define  SOUND_MIXER_TREBLE 129 
#define  SOUND_MIXER_VOLUME 128 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int* smw_mix_regs ; 

__attribute__((used)) static int FUNC2(sb_devc * devc, int dev, int left, int right)
{
	int reg, val;

	switch (dev)
	{
		case SOUND_MIXER_VOLUME:
			FUNC1(devc, 0x0b, 96 - (96 * left / 100));	/* 96=mute, 0=max */
			FUNC1(devc, 0x0c, 96 - (96 * right / 100));
			break;

		case SOUND_MIXER_BASS:
		case SOUND_MIXER_TREBLE:
			devc->levels[dev] = left | (right << 8);
			/* Set left bass and treble values */
			val = ((devc->levels[SOUND_MIXER_TREBLE] & 0xff) * 16 / (unsigned) 100) << 4;
			val |= ((devc->levels[SOUND_MIXER_BASS] & 0xff) * 16 / (unsigned) 100) & 0x0f;
			FUNC1(devc, 0x0d, val);

			/* Set right bass and treble values */
			val = (((devc->levels[SOUND_MIXER_TREBLE] >> 8) & 0xff) * 16 / (unsigned) 100) << 4;
			val |= (((devc->levels[SOUND_MIXER_BASS] >> 8) & 0xff) * 16 / (unsigned) 100) & 0x0f;
			FUNC1(devc, 0x0e, val);
		
			break;

		default:
			/* bounds check */
			if (dev < 0 || dev >= FUNC0(smw_mix_regs))
				return -EINVAL;
			reg = smw_mix_regs[dev];
			if (reg == 0)
				return -EINVAL;
			FUNC1(devc, reg, (24 - (24 * left / 100)) | 0x20);	/* 24=mute, 0=max */
			FUNC1(devc, reg + 1, (24 - (24 * right / 100)) | 0x40);
	}

	devc->levels[dev] = left | (right << 8);
	return left | (right << 8);
}