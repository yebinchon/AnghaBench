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
struct snd_ac97 {int /*<<< orphan*/  flags; int /*<<< orphan*/ * build_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_AD198X_MSPLT ; 
 int /*<<< orphan*/  AC97_AD_MISC ; 
 int /*<<< orphan*/  AC97_STEREO_MUTES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ac97*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*) ; 
 int /*<<< orphan*/  patch_ad1981b_build_ops ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ac97*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_ac97 *ac97)
{
	FUNC1(ac97);
	ac97->build_ops = &patch_ad1981b_build_ops;
	FUNC2(ac97, AC97_AD_MISC, AC97_AD198X_MSPLT, AC97_AD198X_MSPLT);
	ac97->flags |= AC97_STEREO_MUTES;
	FUNC0(ac97);
	return 0;
}