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
typedef  void* u64 ;

/* Variables and functions */
 int SLOT_HEIGHT ; 
 double SLOT_MULT ; 
 double FUNC0 (int) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  first_time ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,double,double,...) ; 
 int /*<<< orphan*/  last_time ; 
 void* max_freq ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 
 void* turbo_frequency ; 

void FUNC5(int cpu, u64 __max_freq, u64 __turbo_freq)
{
	char cpu_string[80];
	if (!svgfile)
		return;

	max_freq = __max_freq;
	turbo_frequency = __turbo_freq;

	FUNC2(svgfile, "<rect x=\"%4.8f\" width=\"%4.8f\" y=\"%4.1f\" height=\"%4.1f\" class=\"cpu\"/>\n",
		FUNC4(first_time),
		FUNC4(last_time)-FUNC4(first_time),
		FUNC0(cpu), SLOT_MULT+SLOT_HEIGHT);

	FUNC3(cpu_string, "CPU %i", (int)cpu+1);
	FUNC2(svgfile, "<text x=\"%4.8f\" y=\"%4.8f\">%s</text>\n",
		10+FUNC4(first_time), FUNC0(cpu) + SLOT_HEIGHT/2, cpu_string);

	FUNC2(svgfile, "<text transform=\"translate(%4.8f,%4.8f)\" font-size=\"1.25pt\">%s</text>\n",
		10+FUNC4(first_time), FUNC0(cpu) + SLOT_MULT + SLOT_HEIGHT - 4, FUNC1());
}