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
struct snd_sf_callback {int /*<<< orphan*/  sample_reset; int /*<<< orphan*/  sample_free; int /*<<< orphan*/  sample_new; struct snd_emux* private_data; } ;
struct snd_emux_voice {int dummy; } ;
struct TYPE_2__ {scalar_t__ sample_reset; scalar_t__ sample_free; scalar_t__ sample_new; } ;
struct snd_emux {scalar_t__ max_voices; int /*<<< orphan*/ * sflist; int /*<<< orphan*/  memhdr; TYPE_1__ ops; int /*<<< orphan*/ * voices; int /*<<< orphan*/  name; struct snd_card* card; int /*<<< orphan*/  hw; } ;
struct snd_card {int dummy; } ;
typedef  int /*<<< orphan*/  sf_cb ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_sf_callback*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sf_sample_free ; 
 int /*<<< orphan*/  sf_sample_new ; 
 int /*<<< orphan*/  sf_sample_reset ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emux*,struct snd_card*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emux*,struct snd_card*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emux*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emux*,struct snd_card*,int) ; 
 int /*<<< orphan*/ * FUNC10 (struct snd_sf_callback*,int /*<<< orphan*/ ) ; 

int FUNC11(struct snd_emux *emu, struct snd_card *card, int index, char *name)
{
	int err;
	struct snd_sf_callback sf_cb;

	if (FUNC3(!emu->hw || emu->max_voices <= 0))
		return -EINVAL;
	if (FUNC3(!card || !name))
		return -EINVAL;

	emu->card = card;
	emu->name = FUNC1(name, GFP_KERNEL);
	emu->voices = FUNC0(emu->max_voices, sizeof(struct snd_emux_voice),
			      GFP_KERNEL);
	if (emu->voices == NULL)
		return -ENOMEM;

	/* create soundfont list */
	FUNC2(&sf_cb, 0, sizeof(sf_cb));
	sf_cb.private_data = emu;
	if (emu->ops.sample_new)
		sf_cb.sample_new = sf_sample_new;
	if (emu->ops.sample_free)
		sf_cb.sample_free = sf_sample_free;
	if (emu->ops.sample_reset)
		sf_cb.sample_reset = sf_sample_reset;
	emu->sflist = FUNC10(&sf_cb, emu->memhdr);
	if (emu->sflist == NULL)
		return -ENOMEM;

	if ((err = FUNC4(emu)) < 0)
		return err;

	FUNC8(emu);

	FUNC5(emu, card, index);
#ifdef CONFIG_SND_SEQUENCER_OSS
	snd_emux_init_seq_oss(emu);
#endif
	FUNC7(emu, card);

#ifdef CONFIG_PROC_FS
	snd_emux_proc_init(emu, card, index);
#endif
	return 0;
}