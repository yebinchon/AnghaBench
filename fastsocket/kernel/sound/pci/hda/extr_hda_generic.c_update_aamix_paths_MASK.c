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
struct nid_path {scalar_t__* path; } ;
struct hda_gen_spec {scalar_t__ alt_dac_nid; scalar_t__ indep_hp_enabled; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int AUTO_PIN_HP_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,struct nid_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,struct nid_path*,int,int) ; 
 struct nid_path* FUNC2 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, bool do_mix,
			       int nomix_path_idx, int mix_path_idx,
			       int out_type)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *nomix_path, *mix_path;

	nomix_path = FUNC2(codec, nomix_path_idx);
	mix_path = FUNC2(codec, mix_path_idx);
	if (!nomix_path || !mix_path)
		return;

	/* if HP aamix path is driven from a different DAC and the
	 * independent HP mode is ON, can't turn on aamix path
	 */
	if (out_type == AUTO_PIN_HP_OUT && spec->indep_hp_enabled &&
	    mix_path->path[0] != spec->alt_dac_nid)
		do_mix = false;

	if (do_mix) {
		FUNC1(codec, nomix_path, false, true);
		FUNC1(codec, mix_path, true, true);
		FUNC0(codec, nomix_path);
	} else {
		FUNC1(codec, mix_path, false, false);
		FUNC1(codec, nomix_path, true, false);
		FUNC0(codec, mix_path);
	}
}