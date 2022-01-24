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

/* Variables and functions */
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec)
{
	struct cs_spec *spec = codec->spec;
	int err;

	err = FUNC1(codec, &spec->gen.autocfg, NULL, 0);
	if (err < 0)
		return err;

	err = FUNC0(codec, &spec->gen.autocfg);
	if (err < 0)
		return err;

	return 0;
}