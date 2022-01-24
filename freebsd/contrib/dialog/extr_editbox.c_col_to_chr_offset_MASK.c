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

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int* FUNC1 (char const*) ; 
 int* FUNC2 (char const*) ; 

__attribute__((used)) static int
FUNC3(const char *text, int col)
{
    const int *cols = FUNC1(text);
    const int *indx = FUNC2(text);
    bool found = FALSE;
    int result = 0;
    unsigned n;
    unsigned len = (unsigned) FUNC0(text);

    for (n = 0; n < len; ++n) {
	if (cols[n] <= col && cols[n + 1] > col) {
	    result = indx[n];
	    found = TRUE;
	    break;
	}
    }
    if (!found && len && cols[len] == col) {
	result = indx[len];
    }
    return result;
}