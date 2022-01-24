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
typedef  int u64 ;

/* Variables and functions */
 double MIN_TEXT_SIZE ; 
 double SLOT_HEIGHT ; 
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC2 (int) ; 
 char* FUNC3 (int) ; 

void FUNC4(int Yslot, u64 start, u64 end)
{
	char *text;
	const char *style;
	double font_size;

	if (!svgfile)
		return;

	style = "waiting";

	if (end-start > 10 * 1000000) /* 10 msec */
		style = "WAITING";

	text = FUNC3(end-start);

	font_size = 1.0 * (FUNC2(end)-FUNC2(start));

	if (font_size > 3)
		font_size = 3;

	font_size = FUNC1(font_size);

	FUNC0(svgfile, "<g transform=\"translate(%4.8f,%4.8d)\">\n", FUNC2(start), Yslot * SLOT_MULT);
	FUNC0(svgfile, "<rect x=\"0\" width=\"%4.8f\" y=\"0\" height=\"%4.1f\" class=\"%s\"/>\n",
		FUNC2(end)-FUNC2(start), SLOT_HEIGHT, style);
	if (font_size > MIN_TEXT_SIZE)
		FUNC0(svgfile, "<text transform=\"rotate(90)\" font-size=\"%1.8fpt\"> %s</text>\n",
			font_size, text);
	FUNC0(svgfile, "</g>\n");
}