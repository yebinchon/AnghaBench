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
typedef  int /*<<< orphan*/  atf_tc_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,long*) ; 

long
FUNC5(const atf_tc_t *tc, const char *name)
{
    long val;
    const char *strval;
    atf_error_t err;

    strval = FUNC3(tc, name);
    err = FUNC4(strval, &val);
    if (FUNC1(err)) {
        FUNC0(err);
        FUNC2("Configuration variable %s does not have a valid "
                    "long value; found %s", name, strval);
    }

    return val;
}