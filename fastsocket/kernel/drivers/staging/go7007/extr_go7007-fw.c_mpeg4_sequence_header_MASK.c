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
struct go7007 {int pali; int sensor_framerate; int fps_scale; int aspect_ratio; int width; int height; int /*<<< orphan*/  standard; } ;
typedef  int /*<<< orphan*/  head ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  GO7007_RATIO_16_9 129 
#define  GO7007_RATIO_4_3 128 
 int /*<<< orphan*/  GO7007_STD_NTSC ; 
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int) ; 
 int FUNC4 (struct go7007*) ; 

__attribute__((used)) static int FUNC5(struct go7007 *go, unsigned char *buf, int ext)
{
	const unsigned char head[] = { 0x00, 0x00, 0x01, 0xb0, go->pali,
		0x00, 0x00, 0x01, 0xb5, 0x09,
		0x00, 0x00, 0x01, 0x00,
		0x00, 0x00, 0x01, 0x20, };
	int i, aspect_ratio;
	int fps = go->sensor_framerate / go->fps_scale;
	FUNC1(c, buf + 2 + sizeof(head));

	switch (go->aspect_ratio) {
	case GO7007_RATIO_4_3:
		aspect_ratio = go->standard == GO7007_STD_NTSC ? 3 : 2;
		break;
	case GO7007_RATIO_16_9:
		aspect_ratio = go->standard == GO7007_STD_NTSC ? 5 : 4;
		break;
	default:
		aspect_ratio = 1;
		break;
	}

	FUNC3(buf + 2, head, sizeof(head));
	FUNC0(c, 0x191, 17);
	FUNC0(c, aspect_ratio, 4);
	FUNC0(c, 0x1, 4);
	FUNC0(c, fps, 16);
	FUNC0(c, 0x3, 2);
	FUNC0(c, 1001, FUNC4(go));
	FUNC0(c, 1, 1);
	FUNC0(c, go->width, 13);
	FUNC0(c, 1, 1);
	FUNC0(c, go->height, 13);
	FUNC0(c, 0x2830, 14);

	/* Byte-align */
	i = 8 - (FUNC2(c) % 8);
	FUNC0(c, 0, 1);
	FUNC0(c, (1 << (i - 1)) - 1, i - 1);

	i = FUNC2(c) + sizeof(head) * 8;
	buf[0] = i & 0xff;
	buf[1] = i >> 8;
	return i;
}