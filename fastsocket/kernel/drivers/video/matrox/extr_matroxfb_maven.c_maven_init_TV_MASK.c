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
struct mavenregs {scalar_t__ mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MATROXFB_OUTPUT_MODE_PAL ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int,int) ; 

__attribute__((used)) static void FUNC5(struct i2c_client* c, const struct mavenregs* m) {
	int val;


	FUNC3(c, 0x3E, 0x01);
	FUNC2(c, 0x82);	/* fetch oscillator state? */
	FUNC3(c, 0x8C, 0x00);
	FUNC2(c, 0x94);	/* get 0x82 */
	FUNC3(c, 0x94, 0xA2);
	/* xmiscctrl */

	FUNC4(c, 0x8E, 0x1EFF);
	FUNC3(c, 0xC6, 0x01);

	/* removed code... */

	FUNC2(c, 0x06);
	FUNC3(c, 0x06, 0xF9);	/* or read |= 0xF0 ? */

	/* removed code here... */

	/* real code begins here? */
	/* chroma subcarrier */
	FUNC0(0x00); FUNC0(0x01); FUNC0(0x02); FUNC0(0x03);

	FUNC0(0x04);

	FUNC0(0x2C);
	FUNC0(0x08);
	FUNC0(0x0A);
	FUNC0(0x09);
	FUNC0(0x29);
	FUNC1(0x31);
	FUNC1(0x17);
	FUNC0(0x0B);
	FUNC0(0x0C);
	if (m->mode == MATROXFB_OUTPUT_MODE_PAL) {
		FUNC3(c, 0x35, 0x10); /* ... */
	} else {
		FUNC3(c, 0x35, 0x0F); /* ... */
	}

	FUNC1(0x10);

	FUNC1(0x0E);
	FUNC1(0x1E);

	FUNC0(0x20);	/* saturation #1 */
	FUNC0(0x22);	/* saturation #2 */
	FUNC0(0x25);	/* hue */
	FUNC0(0x34);
	FUNC0(0x33);
	FUNC0(0x19);
	FUNC0(0x12);
	FUNC0(0x3B);
	FUNC0(0x13);
	FUNC0(0x39);
	FUNC0(0x1D);
	FUNC0(0x3A);
	FUNC0(0x24);
	FUNC0(0x14);
	FUNC0(0x15);
	FUNC0(0x16);
	FUNC1(0x2D);
	FUNC1(0x2F);
	FUNC0(0x1A);
	FUNC0(0x1B);
	FUNC0(0x1C);
	FUNC0(0x23);
	FUNC0(0x26);
	FUNC0(0x28);
	FUNC0(0x27);
	FUNC0(0x21);
	FUNC1(0x2A);
	if (m->mode == MATROXFB_OUTPUT_MODE_PAL)
		FUNC3(c, 0x35, 0x1D);	/* ... */
	else
		FUNC3(c, 0x35, 0x1C);

	FUNC1(0x3C);
	FUNC0(0x37);
	FUNC0(0x38);
	FUNC3(c, 0xB3, 0x01);

	FUNC2(c, 0xB0);	/* read 0x80 */
	FUNC3(c, 0xB0, 0x08);	/* ugh... */
	FUNC2(c, 0xB9);	/* read 0x7C */
	FUNC3(c, 0xB9, 0x78);
	FUNC2(c, 0xBF);	/* read 0x00 */
	FUNC3(c, 0xBF, 0x02);
	FUNC2(c, 0x94);	/* read 0x82 */
	FUNC3(c, 0x94, 0xB3);

	FUNC0(0x80); /* 04 1A 91 or 05 21 91 */
	FUNC0(0x81);
	FUNC0(0x82);

	FUNC3(c, 0x8C, 0x20);
	FUNC2(c, 0x8D);
	FUNC3(c, 0x8D, 0x10);

	FUNC0(0x90); /* 4D 50 52 or 4E 05 45 */
	FUNC0(0x91);
	FUNC0(0x92);

	FUNC1(0x9A); /* 0049 or 004F */
	FUNC1(0x9C); /* 0004 or 0004 */
	FUNC1(0x9E); /* 0458 or 045E */
	FUNC1(0xA0); /* 05DA or 051B */
	FUNC1(0xA2); /* 00CC or 00CF */
	FUNC1(0xA4); /* 007D or 007F */
	FUNC1(0xA6); /* 007C or 007E */
	FUNC1(0xA8); /* 03CB or 03CE */
	FUNC1(0x98); /* 0000 or 0000 */
	FUNC1(0xAE); /* 0044 or 003A */
	FUNC1(0x96); /* 05DA or 051B */
	FUNC1(0xAA); /* 04BC or 046A */
	FUNC1(0xAC); /* 004D or 004E */

	FUNC0(0xBE);
	FUNC0(0xC2);

	FUNC2(c, 0x8D);
	FUNC3(c, 0x8D, 0x04);

	FUNC0(0x20);	/* saturation #1 */
	FUNC0(0x22);	/* saturation #2 */
	FUNC0(0x93);	/* whoops */
	FUNC0(0x20);	/* oh, saturation #1 again */
	FUNC0(0x22);	/* oh, saturation #2 again */
	FUNC0(0x25);	/* hue */
	FUNC1(0x0E);
	FUNC1(0x1E);
	FUNC1(0x0E);	/* problems with memory? */
	FUNC1(0x1E);	/* yes, matrox must have problems in memory area... */

	/* load gamma correction stuff */
	FUNC0(0x83);
	FUNC0(0x84);
	FUNC0(0x85);
	FUNC0(0x86);
	FUNC0(0x87);
	FUNC0(0x88);
	FUNC0(0x89);
	FUNC0(0x8A);
	FUNC0(0x8B);

	val = FUNC2(c, 0x8D);
	val &= 0x14;			/* 0x10 or anything ored with it */
	FUNC3(c, 0x8D, val);

	FUNC0(0x33);
	FUNC0(0x19);
	FUNC0(0x12);
	FUNC0(0x3B);
	FUNC0(0x13);
	FUNC0(0x39);
	FUNC0(0x1D);
	FUNC0(0x3A);
	FUNC0(0x24);
	FUNC0(0x14);
	FUNC0(0x15);
	FUNC0(0x16);
	FUNC1(0x2D);
	FUNC1(0x2F);
	FUNC0(0x1A);
	FUNC0(0x1B);
	FUNC0(0x1C);
	FUNC0(0x23);
	FUNC0(0x26);
	FUNC0(0x28);
	FUNC0(0x27);
	FUNC0(0x21);
	FUNC1(0x2A);
	if (m->mode == MATROXFB_OUTPUT_MODE_PAL)
		FUNC3(c, 0x35, 0x1D);
	else
		FUNC3(c, 0x35, 0x1C);
	FUNC1(0x3C);
	FUNC0(0x37);
	FUNC0(0x38);

	FUNC2(c, 0xB0);
	FUNC0(0xB0);	/* output mode */
	FUNC0(0x90);
	FUNC0(0xBE);
	FUNC0(0xC2);

	FUNC1(0x9A);
	FUNC1(0xA2);
	FUNC1(0x9E);
	FUNC1(0xA6);
	FUNC1(0xAA);
	FUNC1(0xAC);
	FUNC3(c, 0x3E, 0x00);
	FUNC3(c, 0x95, 0x20);
}