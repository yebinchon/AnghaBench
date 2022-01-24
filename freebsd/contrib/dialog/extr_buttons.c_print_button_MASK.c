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
typedef  scalar_t__ strspn ;
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;
typedef  int HOTKEY ;

/* Variables and functions */
 int FUNC0 (char) ; 
 int /*<<< orphan*/  button_active_attr ; 
 int /*<<< orphan*/  button_inactive_attr ; 
 int /*<<< orphan*/  button_key_active_attr ; 
 int /*<<< orphan*/  button_key_inactive_attr ; 
 int /*<<< orphan*/  button_label_active_attr ; 
 int /*<<< orphan*/  button_label_inactive_attr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 int* FUNC3 (char*) ; 
#define  sFIND_KEY 129 
 int sHAD_KEY ; 
#define  sHAVE_KEY 128 
 int FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC8(WINDOW *win, char *label, int hotkey, int y, int x, int selected)
{
    int i;
    HOTKEY state = sFIND_KEY;
    const int *indx = FUNC3(label);
    int limit = FUNC2(label);
    chtype key_attr = (selected
		       ? button_key_active_attr
		       : button_key_inactive_attr);
    chtype label_attr = (selected
			 ? button_label_active_attr
			 : button_label_inactive_attr);

    (void) FUNC7(win, y, x);
    FUNC1(win, selected
		? button_active_attr
		: button_inactive_attr);
    (void) FUNC6(win, "<");
    FUNC1(win, label_attr);
    for (i = 0; i < limit; ++i) {
	int check;
	int first = indx[i];
	int last = indx[i + 1];

	switch (state) {
	case sFIND_KEY:
	    check = FUNC0(label[first]);
#ifdef USE_WIDE_CURSES
	    if ((last - first) != 1) {
		const char *temp = (label + first);
		check = string_to_char(&temp);
	    }
#endif
	    if (check == hotkey) {
		FUNC1(win, key_attr);
		state = sHAVE_KEY;
	    }
	    break;
	case sHAVE_KEY:
	    FUNC1(win, label_attr);
	    state = sHAD_KEY;
	    break;
	default:
	    break;
	}
	FUNC5(win, label + first, last - first);
    }
    FUNC1(win, selected
		? button_active_attr
		: button_inactive_attr);
    (void) FUNC6(win, ">");
    (void) FUNC7(win, y, x + ((int) (strspn) (label, " ")) + 1);
}