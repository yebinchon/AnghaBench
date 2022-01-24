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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  form_active_text_attr ; 
 int /*<<< orphan*/  form_text_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(WINDOW *win,
	    char *text,
	    int thisrow,
	    int show_row,
	    int base_row,
	    int chr_offset)
{
    bool result;

    if (text != 0) {
	FUNC0(win,
			text,
			chr_offset,
			((thisrow == show_row)
			 ? form_active_text_attr
			 : form_text_attr),
			thisrow - base_row,
			0,
			FUNC1(win),
			FALSE,
			FALSE);
	result = TRUE;
    } else {
	result = FALSE;
    }
    return result;
}