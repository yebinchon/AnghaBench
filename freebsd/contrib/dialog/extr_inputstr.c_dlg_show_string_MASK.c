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
typedef  char chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_2__ {scalar_t__ insecure; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 char TAB ; 
 char FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,int,int*,int*) ; 
 TYPE_1__ dialog_vars ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char) ; 
 int FUNC4 (char const*) ; 
 int* FUNC5 (char const*) ; 
 int* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(WINDOW *win,
		const char *string,	/* string to display (may be multibyte) */
		int chr_offset,	/* character (not bytes) offset */
		chtype attr,	/* window-attributes */
		int y_base,	/* beginning row on screen */
		int x_base,	/* beginning column on screen */
		int x_last,	/* number of columns on screen */
		bool hidden,	/* if true, do not echo */
		bool force)	/* if true, force repaint */
{
    x_last = FUNC0(x_last + x_base, FUNC7(win)) - x_base;

    if (hidden && !dialog_vars.insecure) {
	if (force) {
	    (void) FUNC9(win, y_base, x_base);
	    FUNC10(win);
	}
    } else {
	const int *cols = FUNC5(string);
	const int *indx = FUNC6(string);
	int limit = FUNC4(string);

	int i, j, k;
	int input_x;
	int scrollamt;

	FUNC2(string, chr_offset, x_last, &input_x, &scrollamt);

	FUNC3(win, attr);
	(void) FUNC9(win, y_base, x_base);
	for (i = scrollamt, k = 0; i < limit && k < x_last; ++i) {
	    int check = cols[i + 1] - cols[scrollamt];
	    if (check <= x_last) {
		for (j = indx[i]; j < indx[i + 1]; ++j) {
		    chtype ch = FUNC1(string[j]);
		    if (hidden && dialog_vars.insecure) {
			FUNC8(win, '*');
		    } else if (ch == TAB) {
			int count = cols[i + 1] - cols[i];
			while (--count >= 0)
			    FUNC8(win, ' ');
		    } else {
			FUNC8(win, ch);
		    }
		}
		k = check;
	    } else {
		break;
	    }
	}
	while (k++ < x_last)
	    FUNC8(win, ' ');
	(void) FUNC9(win, y_base, x_base + input_x);
	FUNC10(win);
    }
}