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
typedef  scalar_t__ wchar_t ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (char const**) ; 

int
FUNC2(int ch, const char *string)
{
    if (string != 0) {
	int cmp2 = FUNC1(&string);
#ifdef USE_WIDE_CURSES
	wint_t cmp1 = dlg_toupper(ch);
	if (cmp2 != 0 && (wchar_t) cmp1 == (wchar_t) dlg_toupper(cmp2)) {
	    return TRUE;
	}
#else
	if (ch > 0 && ch < 256) {
	    if (FUNC0(ch) == FUNC0(cmp2))
		return TRUE;
	}
#endif
    }
    return FALSE;
}