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
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
struct TYPE_2__ {int type; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 int AUTO_PIN_LINE_IN ; 
 int AUTO_PIN_MIC ; 
 scalar_t__ FUNC0 (struct hda_codec*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, hda_nid_t reference_pin)
{
	struct hda_gen_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->autocfg;
	unsigned int defcfg = FUNC2(codec, reference_pin);
	unsigned int location = FUNC1(defcfg);
	int type, i;
	int num_pins = 0;

	for (type = AUTO_PIN_LINE_IN; type >= AUTO_PIN_MIC; type--) {
		for (i = 0; i < cfg->num_inputs; i++) {
			if (cfg->inputs[i].type != type)
				continue;
			if (FUNC0(codec, location,
					       cfg->inputs[i].pin))
				num_pins++;
		}
	}
	return num_pins;
}