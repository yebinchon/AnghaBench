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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct snd_ac97 {int /*<<< orphan*/  scaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC97_POWERDOWN ; 
 int /*<<< orphan*/  AC97_SCAP_INV_EAPD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ac97*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC2(struct snd_ac97 *ac97, struct snd_kcontrol *kctl)
{
	kctl->private_value = FUNC0(AC97_POWERDOWN, 15, 1, 0);
	FUNC1(ac97, AC97_POWERDOWN, (1<<15), (1<<15)); /* EAPD up */
	ac97->scaps |= AC97_SCAP_INV_EAPD;
}