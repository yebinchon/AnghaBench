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
struct hda_codec {int /*<<< orphan*/  patch_ops; } ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*) ; 
 int /*<<< orphan*/  alc_patch_ops ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec)
{
	int err;

	/* ALC680 has no aa-loopback mixer */
	err = FUNC1(codec, 0);
	if (err < 0)
		return err;

	/* automatic parse from the BIOS config */
	err = FUNC0(codec);
	if (err < 0) {
		FUNC2(codec);
		return err;
	}

	codec->patch_ops = alc_patch_ops;

	return 0;
}