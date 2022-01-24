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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

atf_error_t
FUNC3(const char *str, bool *b)
{
    atf_error_t err;

    if (FUNC2(str, "yes") == 0 ||
        FUNC2(str, "true") == 0) {
        *b = true;
        err = FUNC1();
    } else if (FUNC2(str, "no") == 0 ||
               FUNC2(str, "false") == 0) {
        *b = false;
        err = FUNC1();
    } else {
        /* XXX Not really a libc error. */
        err = FUNC0(EINVAL, "Cannot convert string '%s' "
                             "to boolean", str);
    }

    return err;
}