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
struct hda_gen_spec {int /*<<< orphan*/  autocfg; } ;
struct hda_codec {int /*<<< orphan*/  patch_ops; struct hda_gen_spec* spec; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  generic_patch_ops ; 
 struct hda_gen_spec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_gen_spec*) ; 
 int FUNC4 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct hda_codec *codec)
{
	struct hda_gen_spec *spec;
	int err;

	spec = FUNC0(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return -ENOMEM;
	FUNC3(spec);
	codec->spec = spec;

	err = FUNC4(codec, &spec->autocfg, NULL, 0);
	if (err < 0)
		return err;

	err = FUNC2(codec, &spec->autocfg);
	if (err < 0)
		goto error;

	codec->patch_ops = generic_patch_ops;
	return 0;

error:
	FUNC1(codec);
	return err;
}