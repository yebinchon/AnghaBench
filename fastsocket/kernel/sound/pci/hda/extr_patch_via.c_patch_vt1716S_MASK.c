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
struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {int /*<<< orphan*/  set_widgets_power_state; int /*<<< orphan*/  num_mixers; int /*<<< orphan*/ * mixers; int /*<<< orphan*/  num_iverbs; int /*<<< orphan*/ * init_verbs; TYPE_1__ gen; } ;
struct hda_codec {int /*<<< orphan*/  patch_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  set_widgets_power_state_vt1716S ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 struct via_spec* FUNC2 (struct hda_codec*) ; 
 int FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  via_patch_ops ; 
 int /*<<< orphan*/  vt1716S_init_verbs ; 
 int /*<<< orphan*/  vt1716S_mono_out_mixer ; 
 int /*<<< orphan*/  vt1716s_dmic_mixer ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct via_spec *spec;
	int err;

	/* create a codec specific record */
	spec = FUNC2(codec);
	if (spec == NULL)
		return -ENOMEM;

	spec->gen.mixer_nid = 0x16;
	FUNC0(codec, 0x1a, 0, 3, 40);
	FUNC0(codec, 0x1e, 0, 3, 40);

	/* automatic parse from the BIOS config */
	err = FUNC3(codec);
	if (err < 0) {
		FUNC1(codec);
		return err;
	}

	spec->init_verbs[spec->num_iverbs++]  = vt1716S_init_verbs;

	spec->mixers[spec->num_mixers++] = vt1716s_dmic_mixer;
	spec->mixers[spec->num_mixers++] = vt1716S_mono_out_mixer;

	codec->patch_ops = via_patch_ops;

	spec->set_widgets_power_state = set_widgets_power_state_vt1716S;
	return 0;
}