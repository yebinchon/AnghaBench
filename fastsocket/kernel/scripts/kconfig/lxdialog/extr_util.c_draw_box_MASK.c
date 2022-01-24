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
 char ACS_HLINE ; 
 char ACS_LLCORNER ; 
 char ACS_LRCORNER ; 
 char ACS_ULCORNER ; 
 char ACS_URCORNER ; 
 char ACS_VLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

void
FUNC3(WINDOW * win, int y, int x, int height, int width,
	 chtype box, chtype border)
{
	int i, j;

	FUNC1(win, 0);
	for (i = 0; i < height; i++) {
		FUNC2(win, y + i, x);
		for (j = 0; j < width; j++)
			if (!i && !j)
				FUNC0(win, border | ACS_ULCORNER);
			else if (i == height - 1 && !j)
				FUNC0(win, border | ACS_LLCORNER);
			else if (!i && j == width - 1)
				FUNC0(win, box | ACS_URCORNER);
			else if (i == height - 1 && j == width - 1)
				FUNC0(win, box | ACS_LRCORNER);
			else if (!i)
				FUNC0(win, border | ACS_HLINE);
			else if (i == height - 1)
				FUNC0(win, box | ACS_HLINE);
			else if (!j)
				FUNC0(win, border | ACS_VLINE);
			else if (j == width - 1)
				FUNC0(win, box | ACS_VLINE);
			else
				FUNC0(win, box | ' ');
	}
}