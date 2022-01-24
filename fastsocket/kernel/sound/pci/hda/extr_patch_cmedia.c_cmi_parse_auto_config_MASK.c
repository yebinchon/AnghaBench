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
struct hda_codec {int /*<<< orphan*/  patch_ops; struct cmi_spec* spec; } ;
struct auto_pin_cfg {int dummy; } ;
struct TYPE_2__ {struct auto_pin_cfg autocfg; } ;
struct cmi_spec {TYPE_1__ gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  cmi_auto_patch_ops ; 
 int FUNC0 (struct hda_codec*,struct auto_pin_cfg*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct hda_codec*,struct auto_pin_cfg*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	struct cmi_spec *spec = codec->spec;
	struct auto_pin_cfg *cfg = &spec->gen.autocfg;
	int err;

	FUNC1(&spec->gen);

	err = FUNC2(codec, cfg, NULL, 0);
	if (err < 0)
		return err;
	err = FUNC0(codec, cfg);
	if (err < 0)
		return err;

	codec->patch_ops = cmi_auto_patch_ops;
	return 0;
}