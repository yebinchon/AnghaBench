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
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 unsigned int AC_PWRST_D0 ; 
 unsigned int AC_PWRST_D3 ; 
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,unsigned int*) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	int imux_is_smixer;
	unsigned int parm, parm2;
	/* MUX6 (1eh) = stereo mixer */
	imux_is_smixer =
	FUNC2(codec, 0x1e, 0, AC_VERB_GET_CONNECT_SEL, 0x00) == 5;
	/* inputs */
	/* PW 5/6/7 (29h/2ah/2bh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x29, &parm);
	FUNC0(codec, 0x2a, &parm);
	FUNC0(codec, 0x2b, &parm);
	if (imux_is_smixer)
		parm = AC_PWRST_D0;
	/* MUX6/7 (1eh/1fh), AIW 0/1 (10h/11h) */
	FUNC3(codec, 0x1e, parm);
	FUNC3(codec, 0x1f, parm);
	FUNC3(codec, 0x10, parm);
	FUNC3(codec, 0x11, parm);

	/* outputs */
	/* PW3 (27h), MW2 (1ah), AOW3 (bh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x27, &parm);
	FUNC3(codec, 0x1a, parm);
	parm2 = parm; /* for pin 0x0b */

	/* PW2 (26h), AOW2 (ah) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x26, &parm);
	if (FUNC1(codec))
		FUNC0(codec, 0x2b, &parm);
	FUNC3(codec, 0xa, parm);

	/* PW0 (24h), AOW0 (8h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x24, &parm);
	if (!spec->gen.indep_hp_enabled) /* check for redirected HP */
		FUNC0(codec, 0x28, &parm);
	FUNC3(codec, 0x8, parm);
	if (!spec->gen.indep_hp_enabled && parm2 != AC_PWRST_D3)
		parm = parm2;
	FUNC3(codec, 0xb, parm);
	/* MW9 (21h), Mw2 (1ah), AOW0 (8h) */
	FUNC3(codec, 0x21, imux_is_smixer ? AC_PWRST_D0 : parm);

	/* PW1 (25h), AOW1 (9h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x25, &parm);
	if (FUNC1(codec))
		FUNC0(codec, 0x2a, &parm);
	FUNC3(codec, 0x9, parm);

	if (spec->gen.indep_hp_enabled) {
		/* PW4 (28h), MW3 (1bh), MUX1(34h), AOW4 (ch) */
		parm = AC_PWRST_D3;
		FUNC0(codec, 0x28, &parm);
		FUNC3(codec, 0x1b, parm);
		FUNC3(codec, 0x34, parm);
		FUNC3(codec, 0xc, parm);
	}
}