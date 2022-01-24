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
typedef  char chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LLCORNER ; 
 int /*<<< orphan*/  ACS_LRCORNER ; 
 int /*<<< orphan*/  ACS_ULCORNER ; 
 int /*<<< orphan*/  ACS_URCORNER ; 
 int /*<<< orphan*/  ACS_VLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC5(WINDOW *win, int y, int x, int height, int width,
	      chtype boxchar, chtype borderchar, chtype borderchar2)
{
    int i, j;
    chtype save = FUNC2(win);

    FUNC0(win, 0);
    for (i = 0; i < height; i++) {
	(void) FUNC4(win, y + i, x);
	for (j = 0; j < width; j++)
	    if (!i && !j)
		(void) FUNC3(win, borderchar | FUNC1(ACS_ULCORNER));
	    else if (i == height - 1 && !j)
		(void) FUNC3(win, borderchar | FUNC1(ACS_LLCORNER));
	    else if (!i && j == width - 1)
		(void) FUNC3(win, borderchar2 | FUNC1(ACS_URCORNER));
	    else if (i == height - 1 && j == width - 1)
		(void) FUNC3(win, borderchar2 | FUNC1(ACS_LRCORNER));
	    else if (!i)
		(void) FUNC3(win, borderchar | FUNC1(ACS_HLINE));
	    else if (i == height - 1)
		(void) FUNC3(win, borderchar2 | FUNC1(ACS_HLINE));
	    else if (!j)
		(void) FUNC3(win, borderchar | FUNC1(ACS_VLINE));
	    else if (j == width - 1)
		(void) FUNC3(win, borderchar2 | FUNC1(ACS_VLINE));
	    else
		(void) FUNC3(win, boxchar | ' ');
    }
    FUNC0(win, save);
}