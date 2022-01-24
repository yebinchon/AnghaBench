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
struct snd_kcontrol {int dummy; } ;
struct snd_ac97 {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct snd_kcontrol* FUNC0 (struct snd_ac97*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_ac97 *ac97)
{
	struct snd_kcontrol *kctl = FUNC0(ac97, "External Amplifier", NULL);
	if (! kctl)
		return -ENOENT;
	FUNC1(ac97, kctl);
	return 0;
}