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
typedef  int /*<<< orphan*/  atf_error_t ;
typedef  int /*<<< orphan*/  atf_dynstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*,char**) ; 

__attribute__((used)) static
atf_error_t
FUNC7(atf_dynstr_t *d, char *p)
{
    const char *ptr;
    char *last;
    atf_error_t err;
    bool first;

    FUNC0(FUNC5(p) > 0);
    FUNC0(FUNC2(d) == 0);

    if (p[0] == '/')
        err = FUNC1(d, "/");
    else
        err = FUNC4();

    first = true;
    last = NULL; /* Silence GCC warning. */
    ptr = FUNC6(p, "/", &last);
    while (!FUNC3(err) && ptr != NULL) {
        if (FUNC5(ptr) > 0) {
            err = FUNC1(d, "%s%s", first ? "" : "/", ptr);
            first = false;
        }

        ptr = FUNC6(NULL, "/", &last);
    }

    return err;
}