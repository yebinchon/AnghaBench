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
 int SLOT_HEIGHT ; 
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,double,int) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(u64 start, int row)
{
	if (!svgfile)
		return;

	FUNC0(svgfile, "<circle  cx=\"%4.8f\" cy=\"%4.2d\" r = \"0.01\"  style=\"fill:rgb(255,128,128)\"/>\n",
			FUNC1(start), row * SLOT_MULT);
	FUNC0(svgfile, "<circle  cx=\"%4.8f\" cy=\"%4.2d\" r = \"0.01\"  style=\"fill:rgb(255,128,128)\"/>\n",
			FUNC1(start), row * SLOT_MULT + SLOT_HEIGHT);
}