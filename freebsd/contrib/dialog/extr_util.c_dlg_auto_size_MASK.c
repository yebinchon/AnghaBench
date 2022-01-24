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
struct TYPE_2__ {int /*<<< orphan*/  text_width; int /*<<< orphan*/  text_height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SCOLS ; 
 int SLINES ; 
 TYPE_1__ dialog_state ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int*,int*,int,int) ; 

void
FUNC2(const char *title,
	      const char *prompt,
	      int *height,
	      int *width,
	      int boxlines,
	      int mincols)
{
    FUNC0(("# dlg_auto_size(%d,%d) limits %d,%d\n",
	       *height, *width,
	       boxlines, mincols));

    FUNC1(title, prompt, height, width, boxlines, mincols);

    if (*width > SCOLS) {
	(*height)++;
	*width = SCOLS;
    }

    if (*height > SLINES) {
	*height = SLINES;
    }
    FUNC0(("# ...dlg_auto_size(%d,%d) also %d,%d\n",
	       *height, *width,
	       dialog_state.text_height, dialog_state.text_width));
}