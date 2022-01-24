#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct snd_emux {int client; scalar_t__ timer_active; TYPE_1__ tlist; scalar_t__ use_time; scalar_t__ max_voices; int /*<<< orphan*/ * oss_synth; int /*<<< orphan*/  register_mutex; int /*<<< orphan*/  voice_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct snd_emux* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_emux_timer_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_emux **remu)
{
	struct snd_emux *emu;

	*remu = NULL;
	emu = FUNC1(sizeof(*emu), GFP_KERNEL);
	if (emu == NULL)
		return -ENOMEM;

	FUNC3(&emu->voice_lock);
	FUNC2(&emu->register_mutex);

	emu->client = -1;
#ifdef CONFIG_SND_SEQUENCER_OSS
	emu->oss_synth = NULL;
#endif
	emu->max_voices = 0;
	emu->use_time = 0;

	FUNC0(&emu->tlist);
	emu->tlist.function = snd_emux_timer_callback;
	emu->tlist.data = (unsigned long)emu;
	emu->timer_active = 0;

	*remu = emu;
	return 0;
}