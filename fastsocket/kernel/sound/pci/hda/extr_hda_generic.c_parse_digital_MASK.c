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
struct nid_path {int active; } ;
struct TYPE_4__ {int dig_outs; void* dig_in_pin; int /*<<< orphan*/ * dig_out_type; void** dig_out_pins; } ;
struct TYPE_3__ {void** slave_dig_outs; void* dig_out_nid; } ;
struct hda_gen_spec {void* digin_path; void* dig_in_nid; TYPE_2__ autocfg; void** slave_dig_outs; TYPE_1__ multiout; int /*<<< orphan*/  dig_out_type; void** digout_paths; } ;
struct hda_codec {int num_nodes; void* start_nid; struct hda_gen_spec* spec; } ;
typedef  void* hda_nid_t ;

/* Variables and functions */
 unsigned int AC_WCAP_DIGITAL ; 
 scalar_t__ AC_WID_AUD_IN ; 
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  PIN_IN ; 
 int /*<<< orphan*/  PIN_OUT ; 
 unsigned int FUNC1 (struct hda_codec*,void*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 void* FUNC3 (struct hda_codec*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,void*,int /*<<< orphan*/ ,int) ; 
 struct nid_path* FUNC6 (struct hda_codec*,void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct hda_codec*,struct nid_path*) ; 

__attribute__((used)) static void FUNC8(struct hda_codec *codec)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *path;
	int i, nums;
	hda_nid_t dig_nid, pin;

	/* support multiple SPDIFs; the secondary is set up as a slave */
	nums = 0;
	for (i = 0; i < spec->autocfg.dig_outs; i++) {
		pin = spec->autocfg.dig_out_pins[i];
		dig_nid = FUNC3(codec, pin, true);
		if (!dig_nid)
			continue;
		path = FUNC6(codec, dig_nid, pin, 0);
		if (!path)
			continue;
		FUNC4("digout", path);
		path->active = true;
		spec->digout_paths[i] = FUNC7(codec, path);
		FUNC5(codec, pin, PIN_OUT, false);
		if (!nums) {
			spec->multiout.dig_out_nid = dig_nid;
			spec->dig_out_type = spec->autocfg.dig_out_type[0];
		} else {
			spec->multiout.slave_dig_outs = spec->slave_dig_outs;
			if (nums >= FUNC0(spec->slave_dig_outs) - 1)
			break;
			spec->slave_dig_outs[nums - 1] = dig_nid;
		}
		nums++;
	}

	if (spec->autocfg.dig_in_pin) {
		pin = spec->autocfg.dig_in_pin;
		dig_nid = codec->start_nid;
		for (i = 0; i < codec->num_nodes; i++, dig_nid++) {
			unsigned int wcaps = FUNC1(codec, dig_nid);
			if (FUNC2(wcaps) != AC_WID_AUD_IN)
				continue;
			if (!(wcaps & AC_WCAP_DIGITAL))
				continue;
			path = FUNC6(codec, pin, dig_nid, 0);
			if (path) {
				FUNC4("digin", path);
				path->active = true;
				spec->dig_in_nid = dig_nid;
				spec->digin_path = FUNC7(codec, path);
				FUNC5(codec, pin, PIN_IN, false);
				break;
			}
		}
	}
}