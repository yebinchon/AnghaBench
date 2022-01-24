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
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,double,int,double,int) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(int Yslot, int cpu, u64 start, u64 end)
{
	double text_size;
	if (!svgfile)
		return;

	FUNC0(svgfile, "<rect x=\"%4.8f\" width=\"%4.8d\" y=\"%4.1f\" height=\"%4.1d\" class=\"sample\"/>\n",
		FUNC2(start), FUNC2(end)-FUNC2(start), Yslot * SLOT_MULT, SLOT_HEIGHT);

	text_size = (FUNC2(end)-FUNC2(start));
	if (cpu > 9)
		text_size = text_size/2;
	if (text_size > 1.25)
		text_size = 1.25;
	text_size = FUNC1(text_size);

	if (text_size > MIN_TEXT_SIZE)
		FUNC0(svgfile, "<text x=\"%1.8f\" y=\"%1.8d\" font-size=\"%1.8fpt\">%i</text>\n",
			FUNC2(start), Yslot *  SLOT_MULT + SLOT_HEIGHT - 1, text_size,  cpu + 1);

}