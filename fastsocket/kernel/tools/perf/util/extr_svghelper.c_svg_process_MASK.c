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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 double MIN_TEXT_SIZE ; 
 double SLOT_HEIGHT ; 
 double SLOT_MULT ; 
 double FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(int cpu, u64 start, u64 end, const char *type, const char *name)
{
	double width;

	if (!svgfile)
		return;


	FUNC1(svgfile, "<g transform=\"translate(%4.8f,%4.8f)\">\n", FUNC3(start), FUNC0(cpu));
	FUNC1(svgfile, "<rect x=\"0\" width=\"%4.8f\" y=\"0\" height=\"%4.1f\" class=\"%s\"/>\n",
		FUNC3(end)-FUNC3(start), SLOT_MULT+SLOT_HEIGHT, type);
	width = FUNC3(end)-FUNC3(start);
	if (width > 6)
		width = 6;

	width = FUNC2(width);

	if (width > MIN_TEXT_SIZE)
		FUNC1(svgfile, "<text transform=\"rotate(90)\" font-size=\"%3.8fpt\">%s</text>\n",
			width, name);

	FUNC1(svgfile, "</g>\n");
}