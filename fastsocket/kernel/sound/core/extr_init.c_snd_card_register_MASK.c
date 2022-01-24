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
struct snd_card {size_t number; char* id; int /*<<< orphan*/ * card_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SND_MIXER_OSS_NOTIFY_REGISTER ; 
 int /*<<< orphan*/  card_id_attrs ; 
 int /*<<< orphan*/  card_number_attrs ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card*,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  snd_card_mutex ; 
 int /*<<< orphan*/  FUNC8 (struct snd_card*,char*) ; 
 struct snd_card** snd_cards ; 
 int FUNC9 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sound_class ; 

int FUNC11(struct snd_card *card)
{
	int err;

	if (FUNC7(!card))
		return -EINVAL;
#ifndef CONFIG_SYSFS_DEPRECATED
	if (!card->card_dev) {
		card->card_dev = FUNC2(sound_class, card->dev,
					       FUNC1(0, 0), card,
					       "card%i", card->number);
		if (FUNC0(card->card_dev))
			card->card_dev = NULL;
	}
#endif
	if ((err = FUNC9(card)) < 0)
		return err;
	FUNC5(&snd_card_mutex);
	if (snd_cards[card->number]) {
		/* already registered */
		FUNC6(&snd_card_mutex);
		return 0;
	}
	FUNC8(card, card->id[0] == '\0' ? NULL : card->id);
	snd_cards[card->number] = card;
	FUNC6(&snd_card_mutex);
	FUNC4(card);
#if defined(CONFIG_SND_MIXER_OSS) || defined(CONFIG_SND_MIXER_OSS_MODULE)
	if (snd_mixer_oss_notify_callback)
		snd_mixer_oss_notify_callback(card, SND_MIXER_OSS_NOTIFY_REGISTER);
#endif
#ifndef CONFIG_SYSFS_DEPRECATED
	if (card->card_dev) {
		err = FUNC3(card->card_dev, &card_id_attrs);
		if (err < 0)
			return err;
		err = FUNC3(card->card_dev, &card_number_attrs);
		if (err < 0)
			return err;
	}
#endif
	return 0;
}