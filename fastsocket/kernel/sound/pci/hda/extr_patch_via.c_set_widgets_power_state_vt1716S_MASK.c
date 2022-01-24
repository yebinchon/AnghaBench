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
struct via_spec {TYPE_1__ gen; scalar_t__ dmic_enabled; } ;
struct hda_codec {struct via_spec* spec; } ;

/* Variables and functions */
 unsigned int AC_PWRST_D0 ; 
 unsigned int AC_PWRST_D3 ; 
 int /*<<< orphan*/  AC_VERB_GET_CONNECT_SEL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,unsigned int*) ; 
 scalar_t__ FUNC1 (struct hda_codec*) ; 
 int FUNC2 (struct hda_codec*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	int imux_is_smixer;
	unsigned int parm;
	unsigned int mono_out, present;
	/* SW0 (17h) = stereo mixer */
	imux_is_smixer =
	(FUNC2(codec, 0x17, 0,
			    AC_VERB_GET_CONNECT_SEL, 0x00) ==  5);
	/* inputs */
	/* PW 1/2/5 (1ah/1bh/1eh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x1a, &parm);
	FUNC0(codec, 0x1b, &parm);
	FUNC0(codec, 0x1e, &parm);
	if (imux_is_smixer)
		parm = AC_PWRST_D0;
	/* SW0 (17h), AIW0(13h) */
	FUNC4(codec, 0x17, parm);
	FUNC4(codec, 0x13, parm);

	parm = AC_PWRST_D3;
	FUNC0(codec, 0x1e, &parm);
	/* PW11 (22h) */
	if (spec->dmic_enabled)
		FUNC0(codec, 0x22, &parm);
	else
		FUNC4(codec, 0x22, AC_PWRST_D3);

	/* SW2(26h), AIW1(14h) */
	FUNC4(codec, 0x26, parm);
	FUNC4(codec, 0x14, parm);

	/* outputs */
	/* PW0 (19h), SW1 (18h), AOW1 (11h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x19, &parm);
	/* Smart 5.1 PW2(1bh) */
	if (FUNC1(codec))
		FUNC0(codec, 0x1b, &parm);
	FUNC4(codec, 0x18, parm);
	FUNC4(codec, 0x11, parm);

	/* PW7 (23h), SW3 (27h), AOW3 (25h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x23, &parm);
	/* Smart 5.1 PW1(1ah) */
	if (FUNC1(codec))
		FUNC0(codec, 0x1a, &parm);
	FUNC4(codec, 0x27, parm);

	/* Smart 5.1 PW5(1eh) */
	if (FUNC1(codec))
		FUNC0(codec, 0x1e, &parm);
	FUNC4(codec, 0x25, parm);

	/* Mono out */
	/* SW4(28h)->MW1(29h)-> PW12 (2ah)*/
	present = FUNC3(codec, 0x1c);

	if (present)
		mono_out = 0;
	else {
		present = FUNC3(codec, 0x1d);
		if (!spec->gen.indep_hp_enabled && present)
			mono_out = 0;
		else
			mono_out = 1;
	}
	parm = mono_out ? AC_PWRST_D0 : AC_PWRST_D3;
	FUNC4(codec, 0x28, parm);
	FUNC4(codec, 0x29, parm);
	FUNC4(codec, 0x2a, parm);

	/* PW 3/4 (1ch/1dh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x1c, &parm);
	FUNC0(codec, 0x1d, &parm);
	/* HP Independent Mode, power on AOW3 */
	if (spec->gen.indep_hp_enabled)
		FUNC4(codec, 0x25, parm);

	/* force to D0 for internal Speaker */
	/* MW0 (16h), AOW0 (10h) */
	FUNC4(codec, 0x16, imux_is_smixer ? AC_PWRST_D0 : parm);
	FUNC4(codec, 0x10, mono_out ? AC_PWRST_D0 : parm);
}