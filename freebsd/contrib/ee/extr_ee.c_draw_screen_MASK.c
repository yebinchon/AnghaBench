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
struct text {unsigned char* line; struct text* next_line; int /*<<< orphan*/  line_length; } ;

/* Variables and functions */
 struct text* curr_line ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ horiz_offset ; 
 int last_line ; 
 scalar_t__ scr_horz ; 
 int scr_vert ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__) ; 

void 
FUNC3()		/* redraw the screen from current postion	*/
{
	struct text *temp_line;
	unsigned char *line_out;
	int temp_vert;

	temp_line = curr_line;
	temp_vert = scr_vert;
	FUNC1(text_win);
	while ((temp_line != NULL) && (temp_vert <= last_line))
	{
		line_out = temp_line->line;
		FUNC0(temp_vert, 0, line_out, 1, temp_line->line_length);
		temp_vert++;
		temp_line = temp_line->next_line;
	}
	FUNC2(text_win, temp_vert, 0);
	FUNC2(text_win, scr_vert, (scr_horz - horiz_offset));
}