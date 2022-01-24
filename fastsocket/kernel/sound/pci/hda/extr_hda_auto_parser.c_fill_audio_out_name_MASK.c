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
struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int /*<<< orphan*/  hp_outs; int /*<<< orphan*/  hp_pins; int /*<<< orphan*/  speaker_outs; int /*<<< orphan*/  speaker_pins; int /*<<< orphan*/  line_outs; int /*<<< orphan*/  line_out_pins; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int INPUT_PIN_ATTR_INT ; 
 char* FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec, hda_nid_t nid,
			       const struct auto_pin_cfg *cfg,
			       const char *name, char *label, int maxlen,
			       int *indexp)
{
	unsigned int def_conf = FUNC3(codec, nid);
	int attr = FUNC4(def_conf);
	const char *pfx, *sfx = "";

	/* handle as a speaker if it's a fixed line-out */
	if (!FUNC6(name, "Line Out") && attr == INPUT_PIN_ATTR_INT)
		name = "Speaker";
	pfx = FUNC0(codec, nid);

	if (cfg) {
		/* try to give a unique suffix if needed */
		sfx = FUNC1(nid, cfg->line_out_pins, cfg->line_outs,
				       indexp);
		if (!sfx)
			sfx = FUNC1(nid, cfg->speaker_pins, cfg->speaker_outs,
					       indexp);
		if (!sfx) {
			/* don't add channel suffix for Headphone controls */
			int idx = FUNC2(codec, nid, cfg->hp_pins,
						     cfg->hp_outs);
			if (idx >= 0)
				*indexp = idx;
			sfx = "";
		}
	}
	FUNC5(label, maxlen, "%s%s%s", pfx, name, sfx);
	return 1;
}