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
 int FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;
	int val;

	if (spec->codec_variant != ALC269_TYPE_ALC269VB)
		return;

	if ((FUNC0(codec) & 0x00ff) < 0x015) {
		FUNC2(codec, 0xf, 0x960b);
		FUNC2(codec, 0xe, 0x8817);
	}

	if ((FUNC0(codec) & 0x00ff) == 0x016) {
		FUNC2(codec, 0xf, 0x960b);
		FUNC2(codec, 0xe, 0x8814);
	}

	if ((FUNC0(codec) & 0x00ff) == 0x017) {
		val = FUNC1(codec, 0x04);
		/* Power up output pin */
		FUNC2(codec, 0x04, val | (1<<11));
	}

	if ((FUNC0(codec) & 0x00ff) == 0x018) {
		val = FUNC1(codec, 0xd);
		if ((val & 0x0c00) >> 10 != 0x1) {
			/* Capless ramp up clock control */
			FUNC2(codec, 0xd, val | (1<<10));
		}
		val = FUNC1(codec, 0x17);
		if ((val & 0x01c0) >> 6 != 0x4) {
			/* Class D power on reset */
			FUNC2(codec, 0x17, val | (1<<7));
		}
	}

	val = FUNC1(codec, 0xd); /* Class D */
	FUNC2(codec, 0xd, val | (1<<14));

	val = FUNC1(codec, 0x4); /* HP */
	FUNC2(codec, 0x4, val | (1<<11));
}