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
struct TYPE_4__ {int num_dacs; void** extra_out_nid; void** hp_out_nid; void** dac_nids; } ;
struct auto_pin_cfg {int line_outs; int hp_outs; int speaker_outs; scalar_t__ line_out_type; int /*<<< orphan*/ * hp_pins; int /*<<< orphan*/ * line_out_pins; int /*<<< orphan*/ * speaker_pins; } ;
struct hda_gen_spec {int multi_ios; int ext_channel_count; int min_channel_count; void** speaker_paths; TYPE_2__ multiout; void** hp_paths; scalar_t__ indep_hp; TYPE_1__* multi_io; void** private_dac_nids; void** aamix_out_paths; void** out_paths; scalar_t__ mixer_nid; int /*<<< orphan*/  extra_out_badness; int /*<<< orphan*/  main_out_badness; void* digin_path; void** loopback_paths; void** input_paths; void** digout_paths; int /*<<< orphan*/  paths; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_3__ {void* dac; } ;

/* Variables and functions */
 scalar_t__ AUTO_PIN_HP_OUT ; 
 scalar_t__ AUTO_PIN_SPEAKER_OUT ; 
 scalar_t__ BAD_MULTI_IO ; 
 scalar_t__ BAD_NO_INDEP_HP ; 
 void* FUNC0 (struct hda_codec*,void*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ *,void**,void**) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hda_codec*,int,void**,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct hda_codec*,int,int /*<<< orphan*/ *,void**,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hda_codec *codec,
			      bool fill_hardwired,
			      bool fill_mio_first)
{
	struct hda_gen_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	int i, err, badness;

	/* set num_dacs once to full for look_for_dac() */
	spec->multiout.num_dacs = cfg->line_outs;
	spec->multiout.dac_nids = spec->private_dac_nids;
	FUNC6(spec->private_dac_nids, 0, sizeof(spec->private_dac_nids));
	FUNC6(spec->multiout.hp_out_nid, 0, sizeof(spec->multiout.hp_out_nid));
	FUNC6(spec->multiout.extra_out_nid, 0, sizeof(spec->multiout.extra_out_nid));
	spec->multi_ios = 0;
	FUNC8(&spec->paths);

	/* clear path indices */
	FUNC6(spec->out_paths, 0, sizeof(spec->out_paths));
	FUNC6(spec->hp_paths, 0, sizeof(spec->hp_paths));
	FUNC6(spec->speaker_paths, 0, sizeof(spec->speaker_paths));
	FUNC6(spec->aamix_out_paths, 0, sizeof(spec->aamix_out_paths));
	FUNC6(spec->digout_paths, 0, sizeof(spec->digout_paths));
	FUNC6(spec->input_paths, 0, sizeof(spec->input_paths));
	FUNC6(spec->loopback_paths, 0, sizeof(spec->loopback_paths));
	FUNC6(&spec->digin_path, 0, sizeof(spec->digin_path));

	badness = 0;

	/* fill hard-wired DACs first */
	if (fill_hardwired) {
		bool mapped;
		do {
			mapped = FUNC4(codec, cfg->line_outs,
					     cfg->line_out_pins,
					     spec->private_dac_nids,
					     spec->out_paths);
			mapped |= FUNC4(codec, cfg->hp_outs,
					      cfg->hp_pins,
					      spec->multiout.hp_out_nid,
					      spec->hp_paths);
			mapped |= FUNC4(codec, cfg->speaker_outs,
					      cfg->speaker_pins,
					      spec->multiout.extra_out_nid,
					      spec->speaker_paths);
			if (fill_mio_first && cfg->line_outs == 1 &&
			    cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
				err = FUNC2(codec, cfg->line_out_pins[0], true);
				if (!err)
					mapped = true;
			}
		} while (mapped);
	}

	badness += FUNC9(codec, cfg->line_outs, cfg->line_out_pins,
				   spec->private_dac_nids, spec->out_paths,
				   spec->main_out_badness);

	if (fill_mio_first &&
	    cfg->line_outs == 1 && cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
		/* try to fill multi-io first */
		err = FUNC2(codec, cfg->line_out_pins[0], false);
		if (err < 0)
			return err;
		/* we don't count badness at this stage yet */
	}

	if (cfg->line_out_type != AUTO_PIN_HP_OUT) {
		err = FUNC9(codec, cfg->hp_outs, cfg->hp_pins,
				      spec->multiout.hp_out_nid,
				      spec->hp_paths,
				      spec->extra_out_badness);
		if (err < 0)
			return err;
		badness += err;
	}
	if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
		err = FUNC9(codec, cfg->speaker_outs,
				      cfg->speaker_pins,
				      spec->multiout.extra_out_nid,
				      spec->speaker_paths,
				      spec->extra_out_badness);
		if (err < 0)
			return err;
		badness += err;
	}
	if (cfg->line_outs == 1 && cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
		err = FUNC2(codec, cfg->line_out_pins[0], false);
		if (err < 0)
			return err;
		badness += err;
	}

	if (spec->mixer_nid) {
		spec->aamix_out_paths[0] =
			FUNC0(codec, spec->out_paths[0]);
		if (cfg->line_out_type != AUTO_PIN_HP_OUT)
			spec->aamix_out_paths[1] =
				FUNC0(codec, spec->hp_paths[0]);
		if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT)
			spec->aamix_out_paths[2] =
				FUNC0(codec, spec->speaker_paths[0]);
	}

	if (cfg->hp_outs && cfg->line_out_type == AUTO_PIN_SPEAKER_OUT)
		if (FUNC1(codec, cfg->hp_pins[0]) >= 2)
			spec->multi_ios = 1; /* give badness */

	/* re-count num_dacs and squash invalid entries */
	spec->multiout.num_dacs = 0;
	for (i = 0; i < cfg->line_outs; i++) {
		if (spec->private_dac_nids[i])
			spec->multiout.num_dacs++;
		else {
			FUNC5(spec->private_dac_nids + i,
				spec->private_dac_nids + i + 1,
				sizeof(hda_nid_t) * (cfg->line_outs - i - 1));
			spec->private_dac_nids[cfg->line_outs - 1] = 0;
		}
	}

	spec->ext_channel_count = spec->min_channel_count =
		spec->multiout.num_dacs * 2;

	if (spec->multi_ios == 2) {
		for (i = 0; i < 2; i++)
			spec->private_dac_nids[spec->multiout.num_dacs++] =
				spec->multi_io[i].dac;
	} else if (spec->multi_ios) {
		spec->multi_ios = 0;
		badness += BAD_MULTI_IO;
	}

	if (spec->indep_hp && !FUNC3(codec))
		badness += BAD_NO_INDEP_HP;

	/* re-fill the shared DAC for speaker / headphone */
	if (cfg->line_out_type != AUTO_PIN_HP_OUT)
		FUNC7(codec, cfg->hp_outs,
				   spec->multiout.hp_out_nid,
				   spec->hp_paths);
	if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT)
		FUNC7(codec, cfg->speaker_outs,
				   spec->multiout.extra_out_nid,
				   spec->speaker_paths);

	return badness;
}