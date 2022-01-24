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
struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_2__ {int /*<<< orphan*/  autocfg; } ;
struct cs_spec {TYPE_1__ gen; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CS4210_DAC_NID ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hda_codec *codec)
{
	struct cs_spec *spec = codec->spec;
	hda_nid_t dac = CS4210_DAC_NID;
	int err;

	FUNC0(codec, dac);

	err = FUNC3(codec, &spec->gen.autocfg, NULL, 0);
	if (err < 0)
		return err;

	err = FUNC2(codec, &spec->gen.autocfg);
	if (err < 0)
		return err;

	FUNC1(codec);
	return 0;
}