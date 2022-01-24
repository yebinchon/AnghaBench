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
struct hda_codec {int /*<<< orphan*/  patch_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  automute_hook; } ;
struct cs_spec {TYPE_1__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS4210_VENDOR_NID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  cs421x_fixup_tbl ; 
 int /*<<< orphan*/  cs421x_fixups ; 
 int /*<<< orphan*/  cs421x_models ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  cs421x_patch_ops ; 
 struct cs_spec* FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs_automute ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hda_codec *codec)
{
	struct cs_spec *spec;
	int err;

	spec = FUNC2(codec, CS4210_VENDOR_NID);
	if (!spec)
		return -ENOMEM;

	spec->gen.automute_hook = cs_automute;

	FUNC5(codec, cs421x_models, cs421x_fixup_tbl,
			   cs421x_fixups);
	FUNC4(codec, HDA_FIXUP_ACT_PRE_PROBE);

	/*
	    Update the GPIO/DMIC/SENSE_B pinmux before the configuration
	    is auto-parsed. If GPIO or SENSE_B is forced, DMIC input
	    is disabled.
	*/
	FUNC0(codec);

	err = FUNC1(codec);
	if (err < 0)
		goto error;

	codec->patch_ops = cs421x_patch_ops;

	FUNC4(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC3(codec);
	return err;
}