#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int line_length; int /*<<< orphan*/ * next_line; } ;
struct TYPE_3__ {int line_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* curr_line ; 
 unsigned char* d_line ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* dlt_line ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int) ; 
 unsigned char* point ; 
 int position ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  text_changes ; 
 int /*<<< orphan*/  text_win ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void 
FUNC5()			/* delete from cursor to end of line	*/
{
	unsigned char *dl1;
	unsigned char *dl2;
	int tposit;

	if (d_line != NULL)
		FUNC1(d_line);
	d_line = FUNC2(curr_line->line_length);
	dl1 = d_line;
	dl2 = point;
	tposit = position;
	while (tposit < curr_line->line_length)
	{
		*dl1 = *dl2;
		dl1++;
		dl2++;
		tposit++;
	}
	dlt_line->line_length = 1 + tposit - position;
	*dl1 = '\0';
	*point = '\0';
	curr_line->line_length = position;
	FUNC4(text_win);
	if (curr_line->next_line != NULL)
	{
		FUNC3(FALSE);
		FUNC0(FALSE);
	}
	text_changes = TRUE;
}