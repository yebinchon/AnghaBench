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
typedef  scalar_t__ wint_t ;
typedef  void* wchar_t ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
#define  ERR 130 
#define  KEY_CODE_YES 129 
 int KEY_MAX ; 
 int KEY_MIN ; 
#define  OK 128 
 scalar_t__ have_last_getc ; 
 int last_getc ; 
 char* last_getc_bytes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ used_last_getc ; 
 scalar_t__ FUNC2 (char*,void*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(WINDOW *win, int *fkey)
{
    int ch;
#ifdef USE_WIDE_CURSES
    int code;
    mbstate_t state;
    wchar_t my_wchar;
    wint_t my_wint;

    /*
     * We get a wide character, translate it to multibyte form to avoid
     * having to change the rest of the code to use wide-characters.
     */
    if (used_last_getc >= have_last_getc) {
	used_last_getc = 0;
	have_last_getc = 0;
	ch = ERR;
	*fkey = 0;
	code = wget_wch(win, &my_wint);
	my_wchar = (wchar_t) my_wint;
	switch (code) {
	case KEY_CODE_YES:
	    ch = *fkey = my_wchar;
	    last_getc = my_wchar;
	    break;
	case OK:
	    memset(&state, 0, sizeof(state));
	    have_last_getc = (int) wcrtomb(last_getc_bytes, my_wchar, &state);
	    if (have_last_getc < 0) {
		have_last_getc = used_last_getc = 0;
		last_getc_bytes[0] = (char) my_wchar;
	    }
	    ch = (int) CharOf(last_getc_bytes[used_last_getc++]);
	    last_getc = my_wchar;
	    break;
	case ERR:
	    ch = ERR;
	    last_getc = ERR;
	    break;
	default:
	    break;
	}
    } else {
	ch = (int) CharOf(last_getc_bytes[used_last_getc++]);
    }
#else
    ch = FUNC4(win);
    last_getc = ch;
    *fkey = (ch > KEY_MIN && ch < KEY_MAX);
#endif
    return ch;
}