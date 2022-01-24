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
struct winsize {int ws_row; int ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIOCGWINSZ ; 
 void* FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct winsize*) ; 

void FUNC3(struct winsize *ws)
{
	char *s = FUNC1("LINES");

	if (s != NULL) {
		ws->ws_row = FUNC0(s);
		s = FUNC1("COLUMNS");
		if (s != NULL) {
			ws->ws_col = FUNC0(s);
			if (ws->ws_row && ws->ws_col)
				return;
		}
	}
#ifdef TIOCGWINSZ
	if (ioctl(1, TIOCGWINSZ, ws) == 0 &&
	    ws->ws_row && ws->ws_col)
		return;
#endif
	ws->ws_row = 25;
	ws->ws_col = 80;
}