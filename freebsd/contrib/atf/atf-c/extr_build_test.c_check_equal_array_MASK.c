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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const* const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static
void
FUNC3(const char *const *exp_array, char **actual_array)
{
    {
        const char *const *exp_ptr;
        FUNC2("Expected arguments:");
        for (exp_ptr = exp_array; *exp_ptr != NULL; exp_ptr++)
            FUNC2(" '%s'", *exp_ptr);
        FUNC2("\n");
    }

    {
        char **actual_ptr;
        FUNC2("Returned arguments:");
        for (actual_ptr = actual_array; *actual_ptr != NULL; actual_ptr++)
            FUNC2(" '%s'", *actual_ptr);
        FUNC2("\n");
    }

    if (!FUNC1(exp_array, actual_array))
        FUNC0("The constructed argv differs from the "
                             "expected values");
}