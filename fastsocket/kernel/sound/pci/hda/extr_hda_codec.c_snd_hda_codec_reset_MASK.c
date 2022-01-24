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
struct snd_card {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (struct hda_codec*) ;} ;
struct hda_codec {int num_pcms; int /*<<< orphan*/ * owner; scalar_t__ spdif_status_reset; int /*<<< orphan*/ * slave_dig_outs; int /*<<< orphan*/ * preset; TYPE_1__* pcm_info; int /*<<< orphan*/  verbs; int /*<<< orphan*/  spdif_out; int /*<<< orphan*/  cvt_setups; int /*<<< orphan*/  driver_pins; int /*<<< orphan*/  cmd_cache; int /*<<< orphan*/  amp_cache; int /*<<< orphan*/ * spec; int /*<<< orphan*/ * proc_widget_hook; TYPE_2__ patch_ops; int /*<<< orphan*/  power_jiffies; scalar_t__ power_transition; scalar_t__ power_on; int /*<<< orphan*/  power_work; int /*<<< orphan*/  jackpoll_work; struct hda_bus* bus; } ;
struct hda_cache_head {int dummy; } ;
struct hda_bus {int /*<<< orphan*/  pcm_dev_bits; int /*<<< orphan*/  workq; struct snd_card* card; } ;
struct hda_amp_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; scalar_t__ pcm; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_card*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC10 (struct hda_codec*) ; 
 scalar_t__ FUNC11 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC12 (struct hda_bus*) ; 
 int /*<<< orphan*/  FUNC13 (struct hda_codec*) ; 

int FUNC14(struct hda_codec *codec)
{
	struct hda_bus *bus = codec->bus;
	struct snd_card *card = bus->card;
	int i;

	if (FUNC11(bus) < 0)
		return -EBUSY;

	/* OK, let it free */
	FUNC0(&codec->jackpoll_work);
#ifdef CONFIG_PM
	cancel_delayed_work_sync(&codec->power_work);
	codec->power_on = 0;
	codec->power_transition = 0;
	codec->power_jiffies = jiffies;
	flush_workqueue(bus->workq);
#endif
	FUNC9(codec);
	/* release PCMs */
	for (i = 0; i < codec->num_pcms; i++) {
		if (codec->pcm_info[i].pcm) {
			FUNC8(card, codec->pcm_info[i].pcm);
			FUNC1(codec->pcm_info[i].device,
				  bus->pcm_dev_bits);
		}
	}
	if (codec->patch_ops.free)
		codec->patch_ops.free(codec);
	FUNC5(&codec->patch_ops, 0, sizeof(codec->patch_ops));
	FUNC10(codec);
	codec->proc_widget_hook = NULL;
	codec->spec = NULL;
	FUNC3(&codec->amp_cache);
	FUNC3(&codec->cmd_cache);
	FUNC4(&codec->amp_cache, sizeof(struct hda_amp_info));
	FUNC4(&codec->cmd_cache, sizeof(struct hda_cache_head));
	/* free only driver_pins so that init_pins + user_pins are restored */
	FUNC7(&codec->driver_pins);
	FUNC7(&codec->cvt_setups);
	FUNC7(&codec->spdif_out);
	FUNC7(&codec->verbs);
	codec->num_pcms = 0;
	codec->pcm_info = NULL;
	codec->preset = NULL;
	codec->slave_dig_outs = NULL;
	codec->spdif_status_reset = 0;
	FUNC6(codec->owner);
	codec->owner = NULL;

	/* allow device access again */
	FUNC12(bus);
	return 0;
}