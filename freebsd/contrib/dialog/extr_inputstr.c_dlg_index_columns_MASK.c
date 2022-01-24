#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  temp ;
typedef  int /*<<< orphan*/  state ;
typedef  int /*<<< orphan*/  mbstate_t ;
typedef  char const chtype ;
typedef  int /*<<< orphan*/  cchar_t ;
struct TYPE_4__ {int* list; } ;
typedef  TYPE_1__ CACHE ;

/* Variables and functions */
 char const TAB ; 
 char FUNC0 (char const) ; 
 int /*<<< orphan*/  cInxCols ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (char const*) ; 
 char* FUNC11 (char const) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

const int *
FUNC15(const char *string)
{
    unsigned len = (unsigned) FUNC1(string);
    unsigned inx;
    CACHE *cache = FUNC5(cInxCols, string);

    if (!FUNC8(cache, string, len)) {
	cache->list[0] = 0;
#ifdef USE_WIDE_CURSES
	if (have_locale()) {
	    size_t num_bytes = strlen(string);
	    const int *inx_wchars = dlg_index_wchars(string);
	    mbstate_t state;

	    for (inx = 0; inx < len; ++inx) {
		wchar_t temp[2];
		size_t check;
		int result;

		if (string[inx_wchars[inx]] == TAB) {
		    result = ((cache->list[inx] | 7) + 1) - cache->list[inx];
		} else {
		    memset(&state, 0, sizeof(state));
		    memset(temp, 0, sizeof(temp));
		    check = mbrtowc(temp,
				    string + inx_wchars[inx],
				    num_bytes - (size_t) inx_wchars[inx],
				    &state);
		    if ((int) check <= 0) {
			result = 1;
		    } else {
			result = wcwidth(temp[0]);
		    }
		    if (result < 0) {
			const wchar_t *printable;
			cchar_t temp2, *temp2p = &temp2;
			setcchar(temp2p, temp, 0, 0, 0);
			printable = wunctrl(temp2p);
			result = printable ? (int) wcslen(printable) : 1;
		    }
		}
		cache->list[inx + 1] = result;
		if (inx != 0)
		    cache->list[inx + 1] += cache->list[inx];
	    }
	} else
#endif /* USE_WIDE_CURSES */
	{
	    for (inx = 0; inx < len; ++inx) {
		chtype ch = FUNC0(string[inx]);

		if (ch == TAB)
		    cache->list[inx + 1] =
			((cache->list[inx] | 7) + 1) - cache->list[inx];
		else if (FUNC4(FUNC0(ch)))
		    cache->list[inx + 1] = 1;
		else {
		    const char *printable;
		    printable = FUNC11(ch);
		    cache->list[inx + 1] = (printable
					    ? (int) FUNC10(printable)
					    : 1);
		}
		if (inx != 0)
		    cache->list[inx + 1] += cache->list[inx];
	    }
	}
    }
    return cache->list;
}