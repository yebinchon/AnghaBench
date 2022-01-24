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
struct snd_ac97 {int ext_id; } ;

/* Variables and functions */
 int AC97_EI_SPDIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_ac97_controls_alc655 ; 
 int /*<<< orphan*/  snd_ac97_spdif_controls_alc655 ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 * ac97)
{
	int err;

	if ((err = FUNC1(ac97, snd_ac97_controls_alc655, FUNC0(snd_ac97_controls_alc655))) < 0)
		return err;
	if (ac97->ext_id & AC97_EI_SPDIF) {
		if ((err = FUNC1(ac97, snd_ac97_spdif_controls_alc655, FUNC0(snd_ac97_spdif_controls_alc655))) < 0)
			return err;
	}
	return 0;
}