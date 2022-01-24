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
struct nid_path {int dummy; } ;
struct hda_gen_spec {int* dyn_adc_idx; int /*<<< orphan*/ ** input_paths; scalar_t__ dyn_adc_switch; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int AUTO_CFG_MAX_INS ; 
 int HDA_MAX_NUM_INPUTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct nid_path* FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nid_path *FUNC2(struct hda_codec *codec, int adc_idx, int imux_idx)
{
	struct hda_gen_spec *spec = codec->spec;
	if (imux_idx < 0 || imux_idx >= HDA_MAX_NUM_INPUTS) {
		FUNC0();
		return NULL;
	}
	if (spec->dyn_adc_switch)
		adc_idx = spec->dyn_adc_idx[imux_idx];
	if (adc_idx < 0 || adc_idx >= AUTO_CFG_MAX_INS) {
		FUNC0();
		return NULL;
	}
	return FUNC1(codec, spec->input_paths[imux_idx][adc_idx]);
}