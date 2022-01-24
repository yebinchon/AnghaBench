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
struct snd_soc_codec {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct snd_card* card; } ;
struct snd_kcontrol_new {int /*<<< orphan*/  name; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new const*,struct snd_soc_codec*,int /*<<< orphan*/ *) ; 

int FUNC3(struct snd_soc_codec *codec,
	const struct snd_kcontrol_new *controls, int num_controls)
{
	struct snd_card *card = codec->card;
	int err, i;

	for (i = 0; i < num_controls; i++) {
		const struct snd_kcontrol_new *control = &controls[i];
		err = FUNC1(card, FUNC2(control, codec, NULL));
		if (err < 0) {
			FUNC0(codec->dev, "%s: Failed to add %s\n",
				codec->name, control->name);
			return err;
		}
	}

	return 0;
}