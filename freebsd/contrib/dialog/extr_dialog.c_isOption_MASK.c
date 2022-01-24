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

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  OptionChars ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 char const** dialog_opts ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,size_t) ; 

__attribute__((used)) static bool
FUNC6(const char *arg)
{
    bool result = FALSE;

    if (arg != 0) {
	if (dialog_opts != 0) {
	    int n;
	    for (n = 0; dialog_opts[n] != 0; ++n) {
		if (dialog_opts[n] == arg) {
		    result = TRUE;
		    break;
		}
	    }
	} else if (!FUNC5(arg, "--", (size_t) 2) && FUNC3(FUNC0(arg[2]))) {
	    if (FUNC4(arg) == (strspn) (arg, OptionChars)) {
		result = TRUE;
	    } else {
		FUNC2();
		FUNC1("Invalid option \"%s\"", arg);
	    }
	}
    }
    return result;
}