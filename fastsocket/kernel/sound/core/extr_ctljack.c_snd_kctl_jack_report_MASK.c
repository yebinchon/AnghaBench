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
struct snd_kcontrol {int private_value; int /*<<< orphan*/  id; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct snd_card *card,
			  struct snd_kcontrol *kctl, bool status)
{
	if (kctl->private_value == status)
		return;
	kctl->private_value = status;
	FUNC0(card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
}