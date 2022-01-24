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
struct snd_emux {struct snd_emux* name; struct snd_emux* voices; scalar_t__ sflist; int /*<<< orphan*/  voice_lock; int /*<<< orphan*/  tlist; scalar_t__ timer_active; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct snd_emux *emu)
{
	unsigned long flags;

	if (! emu)
		return -EINVAL;

	FUNC8(&emu->voice_lock, flags);
	if (emu->timer_active)
		FUNC0(&emu->tlist);
	FUNC9(&emu->voice_lock, flags);

#ifdef CONFIG_PROC_FS
	snd_emux_proc_free(emu);
#endif
	FUNC3(emu);
#ifdef CONFIG_SND_SEQUENCER_OSS
	snd_emux_detach_seq_oss(emu);
#endif
	FUNC4(emu);

	FUNC2(emu);

	if (emu->sflist)
		FUNC7(emu->sflist);

	FUNC1(emu->voices);
	FUNC1(emu->name);
	FUNC1(emu);
	return 0;
}