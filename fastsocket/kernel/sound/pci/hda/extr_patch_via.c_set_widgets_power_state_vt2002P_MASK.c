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
struct TYPE_2__ {scalar_t__ indep_hp_enabled; } ;
struct via_spec {scalar_t__ codec_type; TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 unsigned int AC_PWRST_D0 ; 
 unsigned int AC_PWRST_D3 ; 
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 scalar_t__ VT1802 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int,unsigned int*) ; 
 int FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	int imux_is_smixer;
	unsigned int parm;
	unsigned int present;
	/* MUX9 (1eh) = stereo mixer */
	imux_is_smixer =
	FUNC2(codec, 0x1e, 0, AC_VERB_GET_CONNECT_SEL, 0x00) == 3;
	/* inputs */
	/* PW 5/6/7 (29h/2ah/2bh) */
	parm = AC_PWRST_D3;
	FUNC1(codec, 0x29, &parm);
	FUNC1(codec, 0x2a, &parm);
	FUNC1(codec, 0x2b, &parm);
	parm = AC_PWRST_D0;
	/* MUX9/10 (1eh/1fh), AIW 0/1 (10h/11h) */
	FUNC4(codec, 0x1e, parm);
	FUNC4(codec, 0x1f, parm);
	FUNC4(codec, 0x10, parm);
	FUNC4(codec, 0x11, parm);

	/* outputs */
	/* AOW0 (8h)*/
	FUNC4(codec, 0x8, parm);

	if (spec->codec_type == VT1802) {
		/* PW4 (28h), MW4 (18h), MUX4(38h) */
		parm = AC_PWRST_D3;
		FUNC1(codec, 0x28, &parm);
		FUNC4(codec, 0x18, parm);
		FUNC4(codec, 0x38, parm);
	} else {
		/* PW4 (26h), MW4 (1ch), MUX4(37h) */
		parm = AC_PWRST_D3;
		FUNC1(codec, 0x26, &parm);
		FUNC4(codec, 0x1c, parm);
		FUNC4(codec, 0x37, parm);
	}

	if (spec->codec_type == VT1802) {
		/* PW1 (25h), MW1 (15h), MUX1(35h), AOW1 (9h) */
		parm = AC_PWRST_D3;
		FUNC1(codec, 0x25, &parm);
		FUNC4(codec, 0x15, parm);
		FUNC4(codec, 0x35, parm);
	} else {
		/* PW1 (25h), MW1 (19h), MUX1(35h), AOW1 (9h) */
		parm = AC_PWRST_D3;
		FUNC1(codec, 0x25, &parm);
		FUNC4(codec, 0x19, parm);
		FUNC4(codec, 0x35, parm);
	}

	if (spec->gen.indep_hp_enabled)
		FUNC4(codec, 0x9, AC_PWRST_D0);

	/* Class-D */
	/* PW0 (24h), MW0(18h/14h), MUX0(34h) */
	present = FUNC3(codec, 0x25);

	parm = AC_PWRST_D3;
	FUNC1(codec, 0x24, &parm);
	parm = present ? AC_PWRST_D3 : AC_PWRST_D0;
	if (spec->codec_type == VT1802)
		FUNC4(codec, 0x14, parm);
	else
		FUNC4(codec, 0x18, parm);
	FUNC4(codec, 0x34, parm);

	/* Mono Out */
	present = FUNC3(codec, 0x26);

	parm = present ? AC_PWRST_D3 : AC_PWRST_D0;
	if (spec->codec_type == VT1802) {
		/* PW15 (33h), MW8(1ch), MUX8(3ch) */
		FUNC4(codec, 0x33, parm);
		FUNC4(codec, 0x1c, parm);
		FUNC4(codec, 0x3c, parm);
	} else {
		/* PW15 (31h), MW8(17h), MUX8(3bh) */
		FUNC4(codec, 0x31, parm);
		FUNC4(codec, 0x17, parm);
		FUNC4(codec, 0x3b, parm);
	}
	/* MW9 (21h) */
	if (imux_is_smixer || !FUNC0(codec))
		FUNC4(codec, 0x21, AC_PWRST_D0);
	else
		FUNC4(codec, 0x21, AC_PWRST_D3);
}