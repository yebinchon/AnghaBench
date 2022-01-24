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

/* Variables and functions */
 scalar_t__ NUMDATALINES ; 
 scalar_t__ dataline ; 
 scalar_t__ datapos ; 
 int /*<<< orphan*/  gentables ; 
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1 ()
{
	/* short circuit any output */
	if (!gentables)
		return;

	FUNC0 ('\n');

	if (++dataline >= NUMDATALINES) {
		/* Put out a blank line so that the table is grouped into
		 * large blocks that enable the user to find elements easily.
		 */
		FUNC0 ('\n');
		dataline = 0;
	}

	/* Reset the number of characters written on the current line. */
	datapos = 0;
}