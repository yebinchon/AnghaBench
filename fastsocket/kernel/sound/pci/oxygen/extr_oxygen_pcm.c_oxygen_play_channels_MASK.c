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
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 unsigned int OXYGEN_PLAY_CHANNELS_2 ; 
 unsigned int OXYGEN_PLAY_CHANNELS_4 ; 
 unsigned int OXYGEN_PLAY_CHANNELS_6 ; 
 unsigned int OXYGEN_PLAY_CHANNELS_8 ; 
 int FUNC0 (struct snd_pcm_hw_params*) ; 

__attribute__((used)) static unsigned int FUNC1(struct snd_pcm_hw_params *hw_params)
{
	switch (FUNC0(hw_params)) {
	default: /* 2 */
		return OXYGEN_PLAY_CHANNELS_2;
	case 4:
		return OXYGEN_PLAY_CHANNELS_4;
	case 6:
		return OXYGEN_PLAY_CHANNELS_6;
	case 8:
		return OXYGEN_PLAY_CHANNELS_8;
	}
}