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
struct TYPE_4__ {long tab_len; } ;
struct TYPE_3__ {int begin_y; int begin_x; scalar_t__ tab_correct; scalar_t__ begin_set; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int SCOLS ; 
 int SLINES ; 
 int TAB ; 
 TYPE_2__ dialog_state ; 
 TYPE_1__ dialog_vars ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(const char *title,
		  const char *file,
		  int *height,
		  int *width,
		  int boxlines,
		  int mincols)
{
    int count = 0;
    int len = title ? FUNC2(title) : 0;
    int nc = 4;
    int numlines = 2;
    long offset;
    int ch;
    FILE *fd;

    /* Open input file for reading */
    if ((fd = FUNC7(file, "rb")) == NULL)
	FUNC3("dlg_auto_sizefile: Cannot open input file %s", file);

    if ((*height == -1) || (*width == -1)) {
	*height = SLINES - (dialog_vars.begin_set ? dialog_vars.begin_y : 0);
	*width = SCOLS - (dialog_vars.begin_set ? dialog_vars.begin_x : 0);
    }
    if ((*height != 0) && (*width != 0)) {
	(void) FUNC4(fd);
	if (*width > SCOLS)
	    *width = SCOLS;
	if (*height > SLINES)
	    *height = SLINES;
	return;
    }

    while (!FUNC5(fd)) {
	if (FUNC6(fd))
	    break;
	offset = 0;
	while (((ch = FUNC8(fd)) != '\n') && !FUNC5(fd)) {
	    if ((ch == TAB) && (dialog_vars.tab_correct)) {
		offset += dialog_state.tab_len - (offset % dialog_state.tab_len);
	    } else {
		offset++;
	    }
	}

	if (offset > len)
	    len = (int) offset;

	count++;
    }

    /* now 'count' has the number of lines of fd and 'len' the max length */

    *height = FUNC1(SLINES, count + numlines + boxlines);
    *width = FUNC1(SCOLS, FUNC0((len + nc), mincols));
    /* here width and height can be maximized if > SCOLS|SLINES because
       textbox-like widgets don't put all <file> on the screen.
       Msgbox-like widget instead have to put all <text> correctly. */

    (void) FUNC4(fd);
}