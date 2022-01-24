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
struct alc_spec {scalar_t__ codec_variant; } ;

/* Variables and functions */
 scalar_t__ ALC269_TYPE_ALC269VB ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	if (spec->codec_variant != ALC269_TYPE_ALC269VB)
		return;

	if (spec->codec_variant == ALC269_TYPE_ALC269VB)
		FUNC0(codec, 0);
	if (spec->codec_variant == ALC269_TYPE_ALC269VB &&
			(FUNC1(codec) & 0x00ff) == 0x018) {
		FUNC2(150);
	}
}