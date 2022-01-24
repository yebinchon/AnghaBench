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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char const*,char**) ; 

atf_error_t
FUNC6(const char *instr, const char *sep,
                       atf_error_t (*func)(const char *, void *),
                       void *data)
{
    atf_error_t err;
    char *str, *str2, *last;

    str = FUNC4(instr);
    if (str == NULL) {
        err = FUNC2();
        goto out;
    }

    err = FUNC1();
    str2 = FUNC5(str, sep, &last);
    while (str2 != NULL && !FUNC0(err)) {
        err = func(str2, data);
        str2 = FUNC5(NULL, sep, &last);
    }

    FUNC3(str);
out:
    return err;
}