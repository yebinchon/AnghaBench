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
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,unsigned int*) ; 
 unsigned int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct via_spec *spec = codec->spec;
	unsigned int parm;
	unsigned int present;
	/* inputs */
	/* PW 5/6/7 (29h/2ah/2bh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x29, &parm);
	FUNC0(codec, 0x2a, &parm);
	FUNC0(codec, 0x2b, &parm);
	parm = AC_PWRST_D0;
	/* MUX10/11 (1eh/1fh), AIW 0/1 (10h/11h) */
	FUNC2(codec, 0x1e, parm);
	FUNC2(codec, 0x1f, parm);
	FUNC2(codec, 0x10, parm);
	FUNC2(codec, 0x11, parm);

	/* outputs */
	/* AOW0 (8h)*/
	FUNC2(codec, 0x8, AC_PWRST_D0);

	/* PW4 (28h), MW4 (18h), MUX4(38h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x28, &parm);
	FUNC2(codec, 0x18, parm);
	FUNC2(codec, 0x38, parm);

	/* PW1 (25h), MW1 (15h), MUX1(35h), AOW1 (9h) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x25, &parm);
	FUNC2(codec, 0x15, parm);
	FUNC2(codec, 0x35, parm);
	if (spec->gen.indep_hp_enabled)
		FUNC2(codec, 0x9, AC_PWRST_D0);

	/* Internal Speaker */
	/* PW0 (24h), MW0(14h), MUX0(34h) */
	present = FUNC1(codec, 0x25);

	parm = AC_PWRST_D3;
	FUNC0(codec, 0x24, &parm);
	if (present) {
		FUNC2(codec, 0x14, AC_PWRST_D3);
		FUNC2(codec, 0x34, AC_PWRST_D3);
	} else {
		FUNC2(codec, 0x14, AC_PWRST_D0);
		FUNC2(codec, 0x34, AC_PWRST_D0);
	}


	/* Mono Out */
	/* PW13 (31h), MW13(1ch), MUX13(3ch), MW14(3eh) */
	present = FUNC1(codec, 0x28);

	parm = AC_PWRST_D3;
	FUNC0(codec, 0x31, &parm);
	if (present) {
		FUNC2(codec, 0x1c, AC_PWRST_D3);
		FUNC2(codec, 0x3c, AC_PWRST_D3);
		FUNC2(codec, 0x3e, AC_PWRST_D3);
	} else {
		FUNC2(codec, 0x1c, AC_PWRST_D0);
		FUNC2(codec, 0x3c, AC_PWRST_D0);
		FUNC2(codec, 0x3e, AC_PWRST_D0);
	}

	/* PW15 (33h), MW15 (1dh), MUX15(3dh) */
	parm = AC_PWRST_D3;
	FUNC0(codec, 0x33, &parm);
	FUNC2(codec, 0x1d, parm);
	FUNC2(codec, 0x3d, parm);

}