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
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_4__ {double aspect_ratio; int text_height; int text_width; } ;
struct TYPE_3__ {int begin_x; int begin_y; scalar_t__ begin_set; } ;

/* Variables and functions */
 int MARGIN ; 
 int FUNC0 (int,int) ; 
 int SCOLS ; 
 scalar_t__ SHADOW_COLS ; 
 int SLINES ; 
 int /*<<< orphan*/  FUNC1 (char const*,int*,int*) ; 
 TYPE_2__ dialog_state ; 
 TYPE_1__ dialog_vars ; 
 int FUNC2 (char const*) ; 
 double FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int,int,int*,int*) ; 
 int FUNC5 (char const*) ; 
 double FUNC6 (double) ; 
 scalar_t__ FUNC7 (char const*,char) ; 

__attribute__((used)) static void
FUNC8(const char *title,
	       const char *prompt,
	       int *height, int *width,
	       int boxlines, int mincols)
{
    int x = (dialog_vars.begin_set ? dialog_vars.begin_x : 2);
    int y = (dialog_vars.begin_set ? dialog_vars.begin_y : 1);
    int title_length = title ? FUNC2(title) : 0;
    int high;
    int wide;
    int save_high = *height;
    int save_wide = *width;
    int max_high;
    int max_wide;

    if (prompt == 0) {
	if (*height == 0)
	    *height = -1;
	if (*width == 0)
	    *width = -1;
    }

    max_high = (*height < 0);
    max_wide = (*width < 0);

    if (*height > 0) {
	high = *height;
    } else {
	high = SLINES - y;
    }

    if (*width <= 0) {
	if (prompt != 0) {
	    wide = FUNC0(title_length, mincols);
	    if (FUNC7(prompt, '\n') == 0) {
		double val = (dialog_state.aspect_ratio *
			      FUNC3(prompt));
		double xxx = FUNC6(val);
		int tmp = (int) xxx;
		wide = FUNC0(wide, tmp);
		wide = FUNC0(wide, FUNC5(prompt));
		FUNC4((WINDOW *) 0, prompt, high, wide, height, width);
	    } else {
		FUNC1(prompt, height, width);
	    }
	} else {
	    wide = SCOLS - x;
	    FUNC4((WINDOW *) 0, prompt, high, wide, height, width);
	}
    }

    if (*width < title_length) {
	FUNC4((WINDOW *) 0, prompt, high, title_length, height, width);
	*width = title_length;
    }

    dialog_state.text_height = *height;
    dialog_state.text_width = *width;

    if (*width < mincols && save_wide == 0)
	*width = mincols;
    if (prompt != 0) {
	*width += ((2 * MARGIN) + SHADOW_COLS);
	*height += boxlines + (2 * MARGIN);
    }

    if (save_high > 0)
	*height = save_high;
    if (save_wide > 0)
	*width = save_wide;

    if (max_high)
	*height = SLINES - (dialog_vars.begin_set ? dialog_vars.begin_y : 0);
    if (max_wide)
	*width = SCOLS - (dialog_vars.begin_set ? dialog_vars.begin_x : 0);
}