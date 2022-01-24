#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct soundscape {int /*<<< orphan*/  lock; int /*<<< orphan*/  midi_vol; } ;
struct snd_wss {struct snd_card* card; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 struct soundscape* FUNC0 (struct snd_card*) ; 
 struct snd_wss* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kctl,
                           struct snd_ctl_elem_value *uctl)
{
	struct snd_wss *chip = FUNC1(kctl);
	struct snd_card *card = chip->card;
	register struct soundscape *s = FUNC0(card);
	unsigned long flags;

	FUNC2(&s->lock, flags);
	uctl->value.integer.value[0] = s->midi_vol;
	FUNC3(&s->lock, flags);
	return 0;
}