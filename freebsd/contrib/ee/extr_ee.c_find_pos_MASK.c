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
struct TYPE_2__ {int line_length; } ;

/* Variables and functions */
 int COLS ; 
 TYPE_1__* curr_line ; 
 scalar_t__ ee_chinese ; 
 int horiz_offset ; 
 int last_col ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int* point ; 
 int position ; 
 int scr_horz ; 
 int scr_pos ; 
 int /*<<< orphan*/  scr_vert ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void 
FUNC4()		/* move to the same column as on other line	*/
{
	scr_horz = 0;
	position = 1;
	while ((scr_horz < scr_pos) && (position < curr_line->line_length))
	{
		if (*point == 9)
			scr_horz += FUNC2(scr_horz);
		else if (*point < ' ')
			scr_horz += 2;
		else if ((ee_chinese) && (*point > 127) && 
		    ((curr_line->line_length - position) >= 2))
		{
			scr_horz += 2;
			point++;
			position++;
		}
		else
			scr_horz++;
		position++;
		point++;
	}
	if ((scr_horz - horiz_offset) > last_col)
	{
		horiz_offset = (scr_horz - (scr_horz % 8)) - (COLS - 8);
		FUNC1(scr_vert, point);
	}
	else if (scr_horz < horiz_offset)
	{
		horiz_offset = FUNC0(0, (scr_horz - (scr_horz % 8)));
		FUNC1(scr_vert, point);
	}
	FUNC3(text_win, scr_vert, (scr_horz - horiz_offset));
}