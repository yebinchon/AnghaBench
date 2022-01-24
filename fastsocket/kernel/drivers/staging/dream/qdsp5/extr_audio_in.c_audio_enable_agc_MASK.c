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
struct audio_in {int agc_enable; scalar_t__ running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audio_in*) ; 

__attribute__((used)) static void FUNC1(struct audio_in *audio, int enable)
{
	if (audio->agc_enable != enable) {
		audio->agc_enable = enable;
		if (audio->running)
			FUNC0(audio);
	}
}