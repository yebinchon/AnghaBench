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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const char *const *array, const char *pfx)
{
    const char *const *ptr;

    FUNC0("%s", pfx);
    for (ptr = array; *ptr != NULL; ptr++)
        FUNC0(" %s", *ptr);
    FUNC0("\n");
}