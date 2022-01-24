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
struct hda_codec {int /*<<< orphan*/  vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_PROC_COEF ; 
 int /*<<< orphan*/  AC_VERB_SET_COEF_INDEX ; 
 int /*<<< orphan*/  AC_VERB_SET_PROC_COEF ; 
#define  ALC_INIT_DEFAULT 131 
#define  ALC_INIT_GPIO1 130 
#define  ALC_INIT_GPIO2 129 
#define  ALC_INIT_GPIO3 128 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  alc_gpio1_init_verbs ; 
 int /*<<< orphan*/  alc_gpio2_init_verbs ; 
 int /*<<< orphan*/  alc_gpio3_init_verbs ; 
 unsigned int FUNC3 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hda_codec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hda_codec *codec, int type)
{
	unsigned int tmp;

	FUNC2(codec, true);
	switch (type) {
	case ALC_INIT_GPIO1:
		FUNC5(codec, alc_gpio1_init_verbs);
		break;
	case ALC_INIT_GPIO2:
		FUNC5(codec, alc_gpio2_init_verbs);
		break;
	case ALC_INIT_GPIO3:
		FUNC5(codec, alc_gpio3_init_verbs);
		break;
	case ALC_INIT_DEFAULT:
		switch (codec->vendor_id) {
		case 0x10ec0260:
			FUNC4(codec, 0x1a, 0,
					    AC_VERB_SET_COEF_INDEX, 7);
			tmp = FUNC3(codec, 0x1a, 0,
						 AC_VERB_GET_PROC_COEF, 0);
			FUNC4(codec, 0x1a, 0,
					    AC_VERB_SET_COEF_INDEX, 7);
			FUNC4(codec, 0x1a, 0,
					    AC_VERB_SET_PROC_COEF,
					    tmp | 0x2010);
			break;
		case 0x10ec0262:
		case 0x10ec0880:
		case 0x10ec0882:
		case 0x10ec0883:
		case 0x10ec0885:
		case 0x10ec0887:
		/*case 0x10ec0889:*/ /* this causes an SPDIF problem */
			FUNC1(codec);
			break;
		case 0x10ec0888:
			FUNC0(codec);
			break;
#if 0 /* XXX: This may cause the silent output on speaker on some machines */
		case 0x10ec0267:
		case 0x10ec0268:
			snd_hda_codec_write(codec, 0x20, 0,
					    AC_VERB_SET_COEF_INDEX, 7);
			tmp = snd_hda_codec_read(codec, 0x20, 0,
						 AC_VERB_GET_PROC_COEF, 0);
			snd_hda_codec_write(codec, 0x20, 0,
					    AC_VERB_SET_COEF_INDEX, 7);
			snd_hda_codec_write(codec, 0x20, 0,
					    AC_VERB_SET_PROC_COEF,
					    tmp | 0x3000);
			break;
#endif /* XXX */
		}
		break;
	}
}