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
 scalar_t__ EINVAL ; 
 scalar_t__ ERANGE ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ errno ; 
 long FUNC2 (char const*,char**,int) ; 

atf_error_t
FUNC3(const char *str, long *l)
{
    atf_error_t err;
    char *endptr;
    long tmp;

    errno = 0;
    tmp = FUNC2(str, &endptr, 10);
    if (str[0] == '\0' || *endptr != '\0')
        err = FUNC0(EINVAL, "'%s' is not a number", str);
    else if (errno == ERANGE || (tmp == LONG_MAX || tmp == LONG_MIN))
        err = FUNC0(ERANGE, "'%s' is out of range", str);
    else {
        *l = tmp;
        err = FUNC1();
    }

    return err;
}