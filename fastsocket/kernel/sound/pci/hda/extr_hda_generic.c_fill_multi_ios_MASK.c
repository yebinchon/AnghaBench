#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nid_path {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  used; } ;
struct auto_pin_cfg {int num_inputs; size_t line_outs; TYPE_1__* inputs; } ;
struct hda_gen_spec {int multi_ios; int /*<<< orphan*/ * out_paths; TYPE_3__ paths; TYPE_2__* multi_io; int /*<<< orphan*/  mixer_nid; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;
struct TYPE_5__ {scalar_t__ pin; scalar_t__ dac; } ;
struct TYPE_4__ {scalar_t__ pin; int type; } ;

/* Variables and functions */
 int AUTO_PIN_LINE_IN ; 
 int AUTO_PIN_MIC ; 
 int BAD_MULTI_IO ; 
 scalar_t__ FUNC0 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,unsigned int,scalar_t__) ; 
 int FUNC2 (struct hda_codec*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct hda_codec*,scalar_t__) ; 
 unsigned int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct hda_codec*,scalar_t__,int) ; 
 struct nid_path* FUNC6 (struct hda_codec*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct hda_codec*,scalar_t__) ; 
 struct nid_path* FUNC8 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static int FUNC10(struct hda_codec *codec,
			  hda_nid_t reference_pin,
			  bool hardwired)
{
	struct hda_gen_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	int type, i, j, num_pins, old_pins;
	unsigned int defcfg = FUNC7(codec, reference_pin);
	unsigned int location = FUNC4(defcfg);
	int badness = 0;
	struct nid_path *path;

	old_pins = spec->multi_ios;
	if (old_pins >= 2)
		goto end_fill;

	num_pins = FUNC2(codec, reference_pin);
	if (num_pins < 2)
		goto end_fill;

	for (type = AUTO_PIN_LINE_IN; type >= AUTO_PIN_MIC; type--) {
		for (i = 0; i < cfg->num_inputs; i++) {
			hda_nid_t nid = cfg->inputs[i].pin;
			hda_nid_t dac = 0;

			if (cfg->inputs[i].type != type)
				continue;
			if (!FUNC1(codec, location, nid))
				continue;
			for (j = 0; j < spec->multi_ios; j++) {
				if (nid == spec->multi_io[j].pin)
					break;
			}
			if (j < spec->multi_ios)
				continue;

			if (hardwired)
				dac = FUNC3(codec, nid);
			else if (!dac)
				dac = FUNC5(codec, nid, false);
			if (!dac) {
				badness++;
				continue;
			}
			path = FUNC6(codec, dac, nid,
						    -spec->mixer_nid);
			if (!path) {
				badness++;
				continue;
			}
			/* print_nid_path("multiio", path); */
			spec->multi_io[spec->multi_ios].pin = nid;
			spec->multi_io[spec->multi_ios].dac = dac;
			spec->out_paths[cfg->line_outs + spec->multi_ios] =
				FUNC9(codec, path);
			spec->multi_ios++;
			if (spec->multi_ios >= 2)
				break;
		}
	}
 end_fill:
	if (badness)
		badness = BAD_MULTI_IO;
	if (old_pins == spec->multi_ios) {
		if (hardwired)
			return 1; /* nothing found */
		else
			return badness; /* no badness if nothing found */
	}
	if (!hardwired && spec->multi_ios < 2) {
		/* cancel newly assigned paths */
		spec->paths.used -= spec->multi_ios - old_pins;
		spec->multi_ios = old_pins;
		return badness;
	}

	/* assign volume and mute controls */
	for (i = old_pins; i < spec->multi_ios; i++) {
		path = FUNC8(codec, spec->out_paths[cfg->line_outs + i]);
		badness += FUNC0(codec, path);
	}

	return badness;
}