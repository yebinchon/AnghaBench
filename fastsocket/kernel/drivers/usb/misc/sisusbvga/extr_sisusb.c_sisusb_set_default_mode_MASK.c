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
typedef  int u8 ;
struct sisusb_usb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,char const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  SISAR ; 
 int /*<<< orphan*/  SISCR ; 
 int /*<<< orphan*/  SISGR ; 
 int /*<<< orphan*/  SISINPSTAT ; 
 int /*<<< orphan*/  SISMISCW ; 
 int /*<<< orphan*/  SISSR ; 

__attribute__((used)) static int
FUNC7(struct sisusb_usb_data *sisusb, int touchengines)
{
	int ret = 0, i, j, modex, modey, bpp, du;
	u8 sr31, cr63, tmp8;
	static const char attrdata[] = {
		0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,
		0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
		0x01,0x00,0x00,0x00
	};
	static const char crtcrdata[] = {
		0x5f,0x4f,0x50,0x82,0x54,0x80,0x0b,0x3e,
		0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00,
		0xea,0x8c,0xdf,0x28,0x40,0xe7,0x04,0xa3,
		0xff
	};
	static const char grcdata[] = {
		0x00,0x00,0x00,0x00,0x00,0x40,0x05,0x0f,
		0xff
	};
	static const char crtcdata[] = {
		0x5f,0x4f,0x4f,0x83,0x55,0x81,0x0b,0x3e,
		0xe9,0x8b,0xdf,0xe8,0x0c,0x00,0x00,0x05,
		0x00
	};

	modex = 640; modey = 480; bpp = 2;

	FUNC0(SISSR, 0x31, &sr31);
	FUNC0(SISCR, 0x63, &cr63);
	FUNC5(SISSR, 0x01, 0x20);
	FUNC2(SISCR, 0x63, cr63 & 0xbf);
	FUNC5(SISCR, 0x17, 0x80);
	FUNC5(SISSR, 0x1f, 0x04);
	FUNC3(SISSR, 0x07, 0xfb);
	FUNC2(SISSR, 0x00, 0x03);	/* seq */
	FUNC2(SISSR, 0x01, 0x21);
	FUNC2(SISSR, 0x02, 0x0f);
	FUNC2(SISSR, 0x03, 0x00);
	FUNC2(SISSR, 0x04, 0x0e);
	FUNC6(SISMISCW, 0x23);		/* misc */
	for (i = 0; i <= 0x18; i++) {	/* crtc */
		FUNC2(SISCR, i, crtcrdata[i]);
	}
	for (i = 0; i <= 0x13; i++) {	/* att */
		FUNC1(SISINPSTAT, &tmp8);
		FUNC6(SISAR, i);
		FUNC6(SISAR, attrdata[i]);
	}
	FUNC1(SISINPSTAT, &tmp8);
	FUNC6(SISAR, 0x14);
	FUNC6(SISAR, 0x00);
	FUNC1(SISINPSTAT, &tmp8);
	FUNC6(SISAR, 0x20);
	FUNC1(SISINPSTAT, &tmp8);
	for (i = 0; i <= 0x08; i++) {	/* grc */
		FUNC2(SISGR, i, grcdata[i]);
	}
	FUNC3(SISGR, 0x05, 0xbf);
	for (i = 0x0A; i <= 0x0E; i++) {	/* clr ext */
		FUNC2(SISSR, i, 0x00);
	}
	FUNC3(SISSR, 0x37, 0xfe);
	FUNC6(SISMISCW, 0xef);		/* sync */
	FUNC2(SISCR, 0x11, 0x00);	/* crtc */
	for (j = 0x00, i = 0; i <= 7; i++, j++) {
		FUNC2(SISCR, j, crtcdata[i]);
	}
	for (j = 0x10; i <= 10; i++, j++) {
		FUNC2(SISCR, j, crtcdata[i]);
	}
	for (j = 0x15; i <= 12; i++, j++) {
		FUNC2(SISCR, j, crtcdata[i]);
	}
	for (j = 0x0A; i <= 15; i++, j++) {
		FUNC2(SISSR, j, crtcdata[i]);
	}
	FUNC2(SISSR, 0x0E, (crtcdata[16] & 0xE0));
	FUNC4(SISCR, 0x09, 0x5f, ((crtcdata[16] & 0x01) << 5));
	FUNC2(SISCR, 0x14, 0x4f);
	du = (modex / 16) * (bpp * 2);	/* offset/pitch */
	if (modex % 16) du += bpp;
	FUNC4(SISSR, 0x0e, 0xf0, ((du >> 8) & 0x0f));
	FUNC2(SISCR, 0x13, (du & 0xff));
	du <<= 5;
	tmp8 = du >> 8;
	if (du & 0xff) tmp8++;
	FUNC2(SISSR, 0x10, tmp8);
	FUNC2(SISSR, 0x31, 0x00);	/* VCLK */
	FUNC2(SISSR, 0x2b, 0x1b);
	FUNC2(SISSR, 0x2c, 0xe1);
	FUNC2(SISSR, 0x2d, 0x01);
	FUNC3(SISSR, 0x3d, 0xfe);	/* FIFO */
	FUNC2(SISSR, 0x08, 0xae);
	FUNC3(SISSR, 0x09, 0xf0);
	FUNC2(SISSR, 0x08, 0x34);
	FUNC5(SISSR, 0x3d, 0x01);
	FUNC3(SISSR, 0x1f, 0x3f);	/* mode regs */
	FUNC4(SISSR, 0x06, 0xc0, 0x0a);
	FUNC2(SISCR, 0x19, 0x00);
	FUNC3(SISCR, 0x1a, 0xfc);
	FUNC3(SISSR, 0x0f, 0xb7);
	FUNC3(SISSR, 0x31, 0xfb);
	FUNC4(SISSR, 0x21, 0x1f, 0xa0);
	FUNC3(SISSR, 0x32, 0xf3);
	FUNC4(SISSR, 0x07, 0xf8, 0x03);
	FUNC2(SISCR, 0x52, 0x6c);

	FUNC2(SISCR, 0x0d, 0x00);	/* adjust frame */
	FUNC2(SISCR, 0x0c, 0x00);
	FUNC2(SISSR, 0x0d, 0x00);
	FUNC3(SISSR, 0x37, 0xfe);

	FUNC2(SISCR, 0x32, 0x20);
	FUNC3(SISSR, 0x01, 0xdf);	/* enable display */
	FUNC2(SISCR, 0x63, (cr63 & 0xbf));
	FUNC2(SISSR, 0x31, (sr31 & 0xfb));

	if (touchengines) {
		FUNC2(SISSR, 0x20, 0xa1);	/* enable engines */
		FUNC5(SISSR, 0x1e, 0x5a);

		FUNC2(SISSR, 0x26, 0x01);	/* disable cmdqueue */
		FUNC2(SISSR, 0x27, 0x1f);
		FUNC2(SISSR, 0x26, 0x00);
	}

	FUNC2(SISCR, 0x34, 0x44);	/* we just set std mode #44 */

	return ret;
}