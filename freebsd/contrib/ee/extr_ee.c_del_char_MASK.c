#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ line_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* curr_line ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ee_chinese ; 
 int in ; 
 int* point ; 
 scalar_t__ position ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

void 
FUNC3()			/* delete current character	*/
{
	in = 8;  /* backspace */
	if (position < curr_line->line_length)	/* if not end of line	*/
	{
		if ((ee_chinese) && (*point > 127) && 
		    ((curr_line->line_length - position) >= 2))
		{
			point++;
			position++;
		}
		position++;
		point++;
		FUNC2(point);
		FUNC0(TRUE);
	}
	else
	{
		FUNC1(TRUE);
		FUNC0(TRUE);
	}
}