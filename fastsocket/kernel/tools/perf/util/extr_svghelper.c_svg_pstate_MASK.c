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
typedef  double u64 ;

/* Variables and functions */
 char* FUNC0 (double) ; 
 double SLOT_HEIGHT ; 
 double SLOT_MULT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,double,double,...) ; 
 int max_freq ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC3 (double) ; 

void FUNC4(int cpu, u64 start, u64 end, u64 freq)
{
	double height = 0;

	if (!svgfile)
		return;

	if (max_freq)
		height = freq * 1.0 / max_freq * (SLOT_HEIGHT + SLOT_MULT);
	height = 1 + FUNC1(cpu) + SLOT_MULT + SLOT_HEIGHT - height;
	FUNC2(svgfile, "<line x1=\"%4.8f\" x2=\"%4.8f\" y1=\"%4.1f\" y2=\"%4.1f\" class=\"pstate\"/>\n",
		FUNC3(start), FUNC3(end), height, height);
	FUNC2(svgfile, "<text x=\"%4.8f\" y=\"%4.8f\" font-size=\"0.25pt\">%s</text>\n",
		FUNC3(start), height+0.9, FUNC0(freq));

}