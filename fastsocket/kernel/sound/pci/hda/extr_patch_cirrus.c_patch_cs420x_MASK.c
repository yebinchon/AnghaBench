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
 int /*<<< orphan*/  CS420X_VENDOR_NID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PRE_PROBE ; 
 int /*<<< orphan*/  HDA_FIXUP_ACT_PROBE ; 
 int /*<<< orphan*/  cs420x_fixup_tbl ; 
 int /*<<< orphan*/  cs420x_fixups ; 
 int /*<<< orphan*/  cs420x_models ; 
 struct cs_spec* FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs_automute ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  cs_patch_ops ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct cs_spec *spec;
	int err;

	spec = FUNC0(codec, CS420X_VENDOR_NID);
	if (!spec)
		return -ENOMEM;

	spec->gen.automute_hook = cs_automute;

	FUNC4(codec, cs420x_models, cs420x_fixup_tbl,
			   cs420x_fixups);
	FUNC3(codec, HDA_FIXUP_ACT_PRE_PROBE);

	err = FUNC2(codec);
	if (err < 0)
		goto error;

	codec->patch_ops = cs_patch_ops;

	FUNC3(codec, HDA_FIXUP_ACT_PROBE);

	return 0;

 error:
	FUNC1(codec);
	return err;
}