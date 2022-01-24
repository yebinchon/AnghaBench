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
struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int /*<<< orphan*/  init_amp; int /*<<< orphan*/  (* init_hook ) (struct hda_codec*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_FIXUP_ACT_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*) ; 

__attribute__((used)) static int FUNC5(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	if (spec->init_hook)
		spec->init_hook(codec);

	FUNC1(codec);
	FUNC0(codec, spec->init_amp);

	FUNC3(codec);

	FUNC2(codec, HDA_FIXUP_ACT_INIT);

	return 0;
}