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
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_ac97*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_ac97*,char*,char*) ; 
 int /*<<< orphan*/  snd_ac97_stac9708_bias_control ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 *ac97)
{
	int err;

	/* the register bit is writable, but the function is not implemented: */
	FUNC2(ac97, "PCM Out Path & Mute", NULL);

	FUNC3(ac97, "Headphone Playback", "Sigmatel Surround Playback");
	if ((err = FUNC0(ac97, &snd_ac97_stac9708_bias_control, 1)) < 0)
		return err;
	return FUNC1(ac97);
}